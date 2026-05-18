import 'package:flutter/material.dart';

import '../../data/votacions_model.dart';
import '../../data/votacions_service.dart';
import 'crear_votacio_screen.dart';
import 'editar_votacio_screen.dart';
import 'votacio_detall_screen.dart';

class VotacionsScreen extends StatefulWidget {
  final int idEdifici;
  final String userRole;

  const VotacionsScreen({
    super.key,
    required this.idEdifici,
    required this.userRole,
  });

  @override
  State<VotacionsScreen> createState() => _VotacionsScreenState();
}

class _VotacionsScreenState extends State<VotacionsScreen> {
  final _service = VotacionsService();

  List<VotacioResumModel> _votacions = [];
  bool _isLoading = true;
  String? _errorText;

  bool get _canCreate =>
      widget.userRole == 'admin' || widget.userRole == 'owner';

  bool get _canManage => _canCreate;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _isLoading = true;
      _errorText = null;
    });
    try {
      final result = await _service.getVotacions(idEdifici: widget.idEdifici);
      if (mounted) {
        setState(() {
          _votacions = result;
          _isLoading = false;
        });
      }
    } on VotacionsApiException catch (e) {
      if (mounted) {
        setState(() {
          _errorText = e.message;
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _editarVotacio(VotacioResumModel resum) async {
    VotacioDetallModel detall;
    try {
      detall = await _service.getVotacioDetall(id: resum.id);
    } on VotacionsApiException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
      }
      return;
    }
    if (!mounted) return;
    final updated = await Navigator.push<VotacioDetallModel>(
      context,
      MaterialPageRoute(
        builder: (_) => EditarVotacioScreen(votacio: detall, service: _service),
      ),
    );
    if (updated != null && mounted) _load();
  }

  Future<void> _eliminarVotacio(VotacioResumModel votacio) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Eliminar votació'),
        content: Text(
          'Segur que vols eliminar "${votacio.titol}"? S\'esborraran totes les opcions i vots emesos.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Cancel·lar'),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            style: TextButton.styleFrom(foregroundColor: Colors.red[700]),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    try {
      await _service.eliminarVotacio(id: votacio.id);
      if (mounted) _load();
    } on VotacionsApiException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
      }
    }
  }

  Future<void> _openCrear() async {
    final nova = await Navigator.push<VotacioDetallModel>(
      context,
      MaterialPageRoute(
        builder: (_) => CrearVotacioScreen(
          idEdifici: widget.idEdifici,
          service: _service,
        ),
      ),
    );
    if (nova != null && mounted) {
      _load();
    }
  }

  Future<void> _openDetall(VotacioResumModel resum) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VotacioDetallScreen(
          idVotacio: resum.id,
          service: _service,
          userRole: widget.userRole,
        ),
      ),
    );
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          'Votacions',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      floatingActionButton: _canCreate
          ? FloatingActionButton.extended(
              heroTag: 'vots_fab',
              onPressed: _openCrear,
              backgroundColor: Colors.green[700],
              icon: const Icon(Icons.add, color: Colors.white),
              label: const Text('Nova votació', style: TextStyle(color: Colors.white)),
            )
          : null,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_errorText != null) {
      return _buildError();
    }
    if (_votacions.isEmpty) {
      return _buildEmpty();
    }
    return RefreshIndicator(
      onRefresh: _load,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
        itemCount: _votacions.length,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (_, i) => _buildCard(_votacions[i]),
      ),
    );
  }

  Widget _buildError() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 48, color: Colors.red[300]),
            const SizedBox(height: 12),
            Text(
              _errorText!,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _load,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green[700]),
              child: const Text('Torna-ho a provar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmpty() {
    return RefreshIndicator(
      onRefresh: _load,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.how_to_vote_outlined, size: 64, color: Colors.grey[300]),
                const SizedBox(height: 16),
                Text(
                  'Encara no hi ha votacions',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                if (_canCreate) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Crea\'n una per consultar als veïns.',
                    style: TextStyle(fontSize: 13, color: Colors.grey[400]),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(VotacioResumModel votacio) {
    return GestureDetector(
      onTap: () => _openDetall(votacio),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey[200]!),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      votacio.titol,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  _estatBadge(votacio.estat),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.how_to_vote_outlined, size: 14, color: Colors.grey[400]),
                  const SizedBox(width: 4),
                  Text(
                    '${votacio.numVotsTotal} vot${votacio.numVotsTotal == 1 ? '' : 's'}',
                    style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                  ),
                  if (votacio.dataLimit != null) ...[
                    const SizedBox(width: 12),
                    Icon(Icons.schedule, size: 14, color: Colors.grey[400]),
                    const SizedBox(width: 4),
                    Text(
                      'Fins al ${_formatDate(votacio.dataLimit!)}',
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ],
                  const Spacer(),
                  if (_canManage)
                    _buildCardMenu(votacio)
                  else
                    Icon(Icons.chevron_right, size: 18, color: Colors.grey[400]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardMenu(VotacioResumModel votacio) {
    return PopupMenuButton<String>(
      padding: EdgeInsets.zero,
      icon: Icon(Icons.more_vert, size: 18, color: Colors.grey[500]),
      onSelected: (value) {
        if (value == 'editar') _editarVotacio(votacio);
        if (value == 'eliminar') _eliminarVotacio(votacio);
      },
      itemBuilder: (_) => [
        const PopupMenuItem(
          value: 'editar',
          child: Row(
            children: [
              Icon(Icons.edit_outlined, size: 18),
              SizedBox(width: 10),
              Text('Editar'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'eliminar',
          child: Row(
            children: [
              Icon(Icons.delete_outline, size: 18, color: Colors.red[700]),
              const SizedBox(width: 10),
              Text('Eliminar', style: TextStyle(color: Colors.red[700])),
            ],
          ),
        ),
      ],
    );
  }

  Widget _estatBadge(String estat) {
    Color color;
    String label;
    switch (estat) {
      case 'oberta':
        color = Colors.green[700]!;
        label = 'Oberta';
        break;
      case 'tancada':
        color = Colors.grey[600]!;
        label = 'Tancada';
        break;
      default:
        color = Colors.red[600]!;
        label = 'Cancel·lada';
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w600),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}
