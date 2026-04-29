import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:buildrank_mobile/core/config/api_config.dart';
import 'package:buildrank_mobile/features/auth/data/token_storage.dart';
import 'package:buildrank_mobile/features/ranking/data/ranking_model.dart';
import 'package:http/http.dart' as http;

class RankingService {
  /// Quan arribi el backend real, canvia-ho a false i adapta els endpoints
  /// si cal segons el contracte final.
  final bool useMockData;

  const RankingService({this.useMockData = true});

  Future<Map<String, String>> _buildHeaders() async {
    final token = await TokenStorage.getAccessToken();

    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
    };
  }

  Future<RankingResponse> getRanking({
    required int idEdifici,
    required String buildingName,
    required int currentPoints,
    required RankingScope scope,
    String? search,
    int page = 1,
  }) async {
    if (useMockData) {
      return _getMockRanking(
        idEdifici: idEdifici,
        buildingName: buildingName,
        currentPoints: currentPoints,
        scope: scope,
        search: search,
        page: page,
      );
    }

    final uri = scope == RankingScope.global
        ? ApiConfig.rankingGlobal(page: page, search: search)
        : ApiConfig.rankingLeague(
            idEdifici: idEdifici,
            page: page,
            search: search,
          );

    try {
      final response = await http
          .get(uri, headers: await _buildHeaders())
          .timeout(const Duration(seconds: 10));

      final decoded = _tryDecodeBody(response.body);

      if (response.statusCode != 200) {
        throw RankingApiException(
          'No s’ha pogut carregar el rànquing.',
          statusCode: response.statusCode,
          details: decoded,
        );
      }

      if (decoded is! Map) {
        throw const RankingApiException(
          'La resposta del rànquing no té el format esperat.',
        );
      }

      return RankingResponse.fromJson(
        Map<String, dynamic>.from(decoded),
        currentBuildingId: idEdifici,
      );
    } on TimeoutException {
      throw const RankingApiException(
        'La consulta del rànquing ha trigat massa. Torna-ho a provar.',
      );
    } on SocketException {
      throw const RankingApiException(
        'No s’ha pogut connectar amb el servidor.',
      );
    } on FormatException {
      throw const RankingApiException(
        'La resposta del servidor no té el format esperat.',
      );
    } on RankingApiException {
      rethrow;
    } catch (_) {
      throw const RankingApiException(
        'S’ha produït un error inesperat carregant el rànquing.',
      );
    }
  }

  Future<RankingResponse> _getMockRanking({
    required int idEdifici,
    required String buildingName,
    required int currentPoints,
    required RankingScope scope,
    required String? search,
    required int page,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final baseEntries = <RankingEntry>[
      RankingEntry.mock(
        idEdifici: 101,
        position: 1,
        name: 'Green Heights Residencial',
        address: 'Eixample · Barcelona',
        points: 2840,
      ),
      RankingEntry.mock(
        idEdifici: 102,
        position: 2,
        name: 'EcoTower Suites',
        address: 'Sant Martí · Barcelona',
        points: 2715,
      ),
      RankingEntry.mock(
        idEdifici: 103,
        position: 3,
        name: 'Solaris Complex',
        address: 'Gràcia · Barcelona',
        points: 2690,
      ),
      RankingEntry.mock(
        idEdifici: idEdifici,
        position: 4,
        name: buildingName,
        address: scope == RankingScope.global
            ? 'El teu edifici · Rànquing global'
            : 'El teu edifici · Lliga comparable',
        points: currentPoints,
        isCurrentBuilding: true,
      ),
      RankingEntry.mock(
        idEdifici: 104,
        position: 5,
        name: 'Central Park West',
        address: 'Les Corts · Barcelona',
        points: 2480,
      ),
      RankingEntry.mock(
        idEdifici: 105,
        position: 6,
        name: 'Habitatges Maragall',
        address: 'Horta · Barcelona',
        points: 2355,
      ),
      RankingEntry.mock(
        idEdifici: 106,
        position: 7,
        name: 'Bloc Mediterrani',
        address: 'Sants · Barcelona',
        points: 2290,
      ),
      RankingEntry.mock(
        idEdifici: 107,
        position: 8,
        name: 'Residencial Nord',
        address: 'Nou Barris · Barcelona',
        points: 2180,
      ),
    ];

    final query = search?.trim().toLowerCase() ?? '';

    final filtered = query.isEmpty
        ? baseEntries
        : baseEntries.where((entry) {
            return entry.name.toLowerCase().contains(query) ||
                (entry.address?.toLowerCase().contains(query) ?? false);
          }).toList();

    const pageSize = 5;
    final start = (page - 1) * pageSize;
    final end = start + pageSize;

    final pageEntries = start >= filtered.length
        ? <RankingEntry>[]
        : filtered.sublist(
            start,
            end > filtered.length ? filtered.length : end,
          );

    return RankingResponse(
      summary: RankingSummary.mock(currentPoints: currentPoints),
      entries: pageEntries,
      page: page,
      hasMore: end < filtered.length,
    );
  }

  dynamic _tryDecodeBody(String body) {
    if (body.isEmpty) return {};

    try {
      return jsonDecode(body);
    } catch (_) {
      return body;
    }
  }
}

class RankingApiException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic details;

  const RankingApiException(this.message, {this.statusCode, this.details});

  @override
  String toString() {
    if (details == null) return message;
    return '$message Detall: $details';
  }
}
