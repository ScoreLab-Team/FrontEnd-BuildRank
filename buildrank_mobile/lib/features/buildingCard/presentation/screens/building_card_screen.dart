import 'package:flutter/material.dart';

import '../../../../shared/widgets/metric_card.dart';
import '../../../../shared/widgets/action_tile.dart';
import '../../../../shared/widgets/league_info_card.dart';
import '../../../../shared/widgets/revision_card.dart';

class BuildingDetailScreen extends StatefulWidget {
  final int? idEdifici;
  final Map<String, dynamic>? building;
  final String? title;
  final String? address;
  final int? score;

  const BuildingDetailScreen({
    super.key,
    this.idEdifici,
    this.building,
    this.title,
    this.address,
    this.score,
  });

  @override
  State<BuildingDetailScreen> createState() => _BuildingDetailScreenState();
}

class _BuildingDetailScreenState extends State<BuildingDetailScreen> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leadingWidth: 120,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Torna"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                ),
              ),
            ),

            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pravatar.cc/100"),
                ),
              ),
            ],
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildHeader(),

                const SizedBox(height: 20),

                _buildPerformance(),

                const SizedBox(height: 20),

                _buildActions(),

                const SizedBox(height: 20),

                _buildTabs(),

                const SizedBox(height: 16),

                _buildDetails(),

                const SizedBox(height: 20),

                const LeagueInfoCard(),

                const SizedBox(height: 20),

                const RevisionCard(),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0xFFE8F4EC),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "VERIFICAT • NIVELL 3",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            _title,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          Row(
            children: [
              const Icon(Icons.location_on_outlined, size: 16),
              const SizedBox(width: 6),
              Expanded(child: Text(_address)),
            ],
          ),

          const SizedBox(height: 30),

          Center(
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: _scoreColor, width: 10),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _score.toString(),
                          style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          _scoreLabel,
                          style: TextStyle(
                            color: _scoreColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: const Text("+12% vs temporada anterior"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPerformance() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "RENDIMENT",
                style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1),
              ),
              Text(
                "Veure Auditoria",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.7,
            children: const [
              MetricCard(
                title: "QUALIFICACIÓ ENERGÈTICA",
                value: "B",
                icon: Icons.bolt,
              ),

              MetricCard(
                title: "EFICIÈNCIA HÍDRICA",
                value: "A",
                icon: Icons.water_drop,
              ),

              MetricCard(
                title: "RESILIÈNCIA",
                value: "Alta",
                icon: Icons.shield,
              ),

              MetricCard(
                title: "EMISSIONS DE CO2",
                value: "12kg/m²",
                icon: Icons.eco,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "ACCIONS RECOMANADES",
            style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1),
          ),

          SizedBox(height: 14),

          ActionTile(
            icon: Icons.bolt,
            title: "Executa Simulació",
            subtitle: "Prova el ROI de solar i aïllament",
            color: Color(0xFFE8F4EC),
          ),

          SizedBox(height: 10),

          ActionTile(
            icon: Icons.how_to_vote,
            title: "Votació de la comunitat",
            subtitle: "Revisa 2 renovacions actives",
            color: Color(0xFFE7ECF7),
          ),

          SizedBox(height: 10),

          ActionTile(
            icon: Icons.description,
            title: "Genera Informe",
            subtitle: "Exporta les dades de l'edifici",
            color: Color(0xFFF1F1F1),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SegmentedButton<int>(
        segments: const [
          ButtonSegment(value: 0, label: Text("Detalls")),
          ButtonSegment(value: 1, label: Text("Historial")),
          ButtonSegment(value: 2, label: Text("Documents")),
        ],
        selected: {_tabIndex},
        onSelectionChanged: (value) {
          setState(() {
            _tabIndex = value.first;
          });
        },
      ),
    );
  }

  Widget _buildDetails() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _DetailItem(
                label: "ANY DE CONSTRUCCIÓ",
                value: _value("anyConstruccio"),
              ),
              _DetailItem(
                label: "PLANTES",
                value: "${_value("nombrePlantes")} plantes",
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _DetailItem(
                label: "TIPOLOGIA",
                value: _value("tipologia"),
              ),
              _DetailItem(
                label: "SUPERFÍCIE",
                value: "${_value("superficieTotal")} m²",
              ),
            ],
          ),
        ],
      ),
    );
  }

  int get _score => (widget.score ?? 0).clamp(0, 100);

  String get _title => widget.title ?? 'Edifici';

  String get _address => widget.address ?? 'Localització no disponible';

  String get _scoreLabel {
    if (_score >= 80) return 'EXCEL·LENT';
    if (_score >= 65) return 'BO';
    if (_score >= 50) return 'MILLORABLE';
    return 'PRIORITARI';
  }

  Color get _scoreColor {
    if (_score >= 80) return Colors.green;
    if (_score >= 65) return Colors.blue;
    if (_score >= 50) return Colors.orange;
    return Colors.red;
  }

  String _value(String key, {String fallback = 'No disponible'}) {
    final value = widget.building?[key];
    if (value == null) return fallback;
    final text = value.toString().trim();
    return text.isEmpty ? fallback : text;
  }
  
}

class _DetailItem extends StatelessWidget {
  final String label;
  final String value;

  const _DetailItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
