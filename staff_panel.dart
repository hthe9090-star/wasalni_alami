import 'package:flutter/material.dart';

class StaffPanelScreen extends StatelessWidget {
  const StaffPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة الموظف (تجريبية)')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text('مراجعة طلب #1003'),
            subtitle: Text('تحقق من بيانات العميل والطرد'),
          ),
        ],
      ),
    );
  }
}