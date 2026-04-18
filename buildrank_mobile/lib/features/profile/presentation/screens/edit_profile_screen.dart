import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  final String initialFullName;
  final String initialEmail;
  final String initialRoleLabel;

  const EditProfileScreen({
    super.key,
    required this.initialFullName,
    required this.initialEmail,
    required this.initialRoleLabel,
  });

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late final TextEditingController _fullNameController;
  late final TextEditingController _emailController;

  late String _selectedRoleLabel;
  bool _isSaving = false;

  final List<String> _roleOptions = const [
    'Administrador de finca',
    'Propietari',
    'Llogater',
  ];

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: widget.initialFullName);
    _emailController = TextEditingController(text: widget.initialEmail);
    _selectedRoleLabel = _roleOptions.contains(widget.initialRoleLabel)
        ? widget.initialRoleLabel
        : _roleOptions.first;
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _saveProfile() async {
    final fullName = _fullNameController.text.trim();
    final email = _emailController.text.trim();

    if (fullName.isEmpty) {
      _showMessage('El nom és obligatori.');
      return;
    }

    if (email.isEmpty) {
      _showMessage('El correu electrònic és obligatori.');
      return;
    }

    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email)) {
      _showMessage('Introdueix un correu electrònic vàlid.');
      return;
    }

    setState(() {
      _isSaving = true;
    });

    await Future.delayed(const Duration(milliseconds: 500));

    if (!mounted) return;

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Canvis desats localment.')));

    Navigator.pop(context);

    setState(() {
      _isSaving = false;
    });
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Editar perfil')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 8),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 18,
                  offset: Offset(0, 8),
                  color: Color.fromRGBO(0, 0, 0, 0.06),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Dades personals',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Modifica la informació bàsica del teu perfil.',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 24),

                TextField(
                  controller: _fullNameController,
                  enabled: !_isSaving,
                  decoration: const InputDecoration(
                    labelText: 'Nom complet',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),

                const SizedBox(height: 16),

                TextField(
                  controller: _emailController,
                  enabled: !_isSaving,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Correu electrònic',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),

                const SizedBox(height: 16),

                DropdownButtonFormField<String>(
                  initialValue: _selectedRoleLabel,
                  items: _roleOptions
                      .map(
                        (role) => DropdownMenuItem<String>(
                          value: role,
                          child: Text(role),
                        ),
                      )
                      .toList(),
                  onChanged: _isSaving
                      ? null
                      : (value) {
                          if (value == null) return;
                          setState(() {
                            _selectedRoleLabel = value;
                          });
                        },
                  decoration: const InputDecoration(
                    labelText: 'Rol',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.badge_outlined),
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  height: 52,
                  child: ElevatedButton(
                    onPressed: _isSaving ? null : _saveProfile,
                    child: Text(
                      _isSaving ? 'Desant...' : 'Guardar canvis',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                OutlinedButton(
                  onPressed: _isSaving ? null : () => Navigator.pop(context),
                  child: const Text('Cancel·lar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
