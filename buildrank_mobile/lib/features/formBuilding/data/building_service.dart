import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:buildrank_mobile/core/config/api_config.dart';
import 'package:buildrank_mobile/features/auth/data/token_storage.dart';
import 'package:http/http.dart' as http;

class BuildingService {
  Future<Map<String, String>> _buildHeaders() async {
    final accessToken = await TokenStorage.getAccessToken();

    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      if (accessToken != null && accessToken.isNotEmpty)
        'Authorization': 'Bearer $accessToken',
    };
  }

  Future<List<Map<String, dynamic>>> autocompleteCarrers(String query) async {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty) return [];

    try {
      final response = await http
          .get(
            ApiConfig.uri(
              ApiConfig.carrersAutocomplete,
              queryParameters: {'q': trimmedQuery},
            ),
            headers: await _buildHeaders(),
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) {
        final decoded = _tryDecodeBody(response.body);
        throw BuildingApiException(
          _extractErrorMessage(
            decoded,
            fallback: 'No s\'han pogut carregar els suggeriments de carrers.',
          ),
          statusCode: response.statusCode,
          details: decoded,
        );
      }

      final decoded = jsonDecode(response.body);

      if (decoded is! List) return [];

      return decoded
          .whereType<Map>()
          .map((item) => Map<String, dynamic>.from(item))
          .toList();
    } on BuildingApiException {
      rethrow;
    } on TimeoutException {
      throw const BuildingApiException(
        'La consulta de carrers ha trigat massa. Torna-ho a provar.',
      );
    } on SocketException {
      throw const BuildingApiException(
        'No s\'ha pogut connectar amb el servidor.',
      );
    } on FormatException {
      throw const BuildingApiException(
        'La resposta del servidor no té el format esperat.',
      );
    } catch (_) {
      throw const BuildingApiException(
        'S\'ha produït un error inesperat carregant els carrers.',
      );
    }
  }

  Future<Map<String, dynamic>> createLocalitzacio(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await http.post(
        ApiConfig.uri(ApiConfig.localitzacions),
        headers: await _buildHeaders(),
        body: jsonEncode(payload),
      );

      final data = _decodeBody(response);

      if (response.statusCode == 201) {
        return data;
      }

      throw BuildingApiException(
        _extractErrorMessage(
          data,
          fallback: 'No s\'ha pogut crear la localització.',
        ),
        statusCode: response.statusCode,
        details: data,
      );
    } on BuildingApiException {
      rethrow;
    } on SocketException {
      throw const BuildingApiException(
        'No s\'ha pogut connectar amb el servidor.',
      );
    } on FormatException {
      throw const BuildingApiException(
        'La resposta del servidor no té el format esperat.',
      );
    } catch (_) {
      throw const BuildingApiException(
        'S\'ha produït un error inesperat creant la localització.',
      );
    }
  }

  Future<Map<String, dynamic>> createEdifici(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await http.post(
        ApiConfig.uri(ApiConfig.crearEdifici),
        headers: await _buildHeaders(),
        body: jsonEncode(payload),
      );

      final data = _decodeBody(response);

      if (response.statusCode == 201) {
        return data;
      }

      throw BuildingApiException(
        _extractErrorMessage(
          data,
          fallback: 'No s\'ha pogut crear l\'edifici.',
        ),
        statusCode: response.statusCode,
        details: data,
      );
    } on BuildingApiException {
      rethrow;
    } on SocketException {
      throw const BuildingApiException(
        'No s\'ha pogut connectar amb el servidor.',
      );
    } on FormatException {
      throw const BuildingApiException(
        'La resposta del servidor no té el format esperat.',
      );
    } catch (_) {
      throw const BuildingApiException(
        'S\'ha produït un error inesperat creant l\'edifici.',
      );
    }
  }

  Future<Map<String, dynamic>> createBuildingWithLocation({
    required Map<String, dynamic> localitzacioPayload,
    required Map<String, dynamic> edificiPayload,
  }) async {
    final localitzacio = await createLocalitzacio(localitzacioPayload);

    final localitzacioId = _extractId(localitzacio);
    if (localitzacioId == null) {
      throw const BuildingApiException(
        'La localització s\'ha creat però la resposta no conté cap id reconeixible.',
      );
    }

    final payloadAmbLocalitzacio = {
      ...edificiPayload,
      'localitzacio': localitzacioId,
    };

    return createEdifici(payloadAmbLocalitzacio);
  }

  Map<String, dynamic> _decodeBody(http.Response response) {
    if (response.body.isEmpty) return {};

    final decoded = jsonDecode(response.body);

    if (decoded is Map<String, dynamic>) {
      return decoded;
    }

    return {'data': decoded};
  }

  dynamic _tryDecodeBody(String body) {
    if (body.isEmpty) return {};

    try {
      return jsonDecode(body);
    } catch (_) {
      return body;
    }
  }

  String _extractErrorMessage(dynamic data, {required String fallback}) {
    if (data == null) return fallback;

    if (data is Map<String, dynamic>) {
      if (data.isEmpty) return fallback;

      if (data['detail'] != null) {
        return data['detail'].toString();
      }

      final firstEntry = data.entries.first;

      if (firstEntry.value is List && (firstEntry.value as List).isNotEmpty) {
        return (firstEntry.value as List).first.toString();
      }

      return firstEntry.value.toString();
    }

    return data.toString();
  }

  int? _extractId(Map<String, dynamic> json) {
    const possibleKeys = ['id', 'idLocalitzacio', 'pk'];

    for (final key in possibleKeys) {
      final value = json[key];
      if (value is int) return value;
      if (value is String) return int.tryParse(value);
    }

    return null;
  }
}

class BuildingApiException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic details;

  const BuildingApiException(this.message, {this.statusCode, this.details});

  @override
  String toString() {
    if (details == null) return message;
    return '$message Detall: $details';
  }
}
