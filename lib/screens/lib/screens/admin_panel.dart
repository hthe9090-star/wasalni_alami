import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({super.key});

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  List<dynamic> provinces = [];

  @override
  void initState() {
    super.initState();
    _loadProvinces();
  }

  Future<void> _loadProvinces() async {
    final data = await rootBundle.loadString('assets/config/provinces.json');
    final jsonMap = json.decode(data) as Map<String, dynamic>;
    setState(() {
      provinces = jsonMap['provinces'] as List<dynamic>;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة المدير (تجريبية)')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) {
          final p = provinces[i];
          return ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            tileColor: const Color(0xFF1A1A1A),
            title: Text('${p['name_ar']} – ${p['base_fee']} د.ع'),
            subtitle: Text(p['active'] ? 'مفعّل' : 'موقّف', style: TextStyle(color: p['active'] ? Colors.greenAccent : Colors.redAccent)),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemCount: provinces.length,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('إضافة محافظة/مندوب/موظف (تجريبي)')));
        },
        label: const Text('إضافة'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
