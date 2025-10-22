import 'package:flutter/material.dart';

class CourierPanelScreen extends StatelessWidget {
  const CourierPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة المندوب (تجريبية)')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.local_shipping),
            title: Text('طلب #1001 - بغداد → الكرادة'),
            subtitle: Text('حالة: جاهز للاستلام'),
          ),
          ListTile(
            leading: Icon(Icons.local_shipping),
            title: Text('طلب #1002 - البصرة → العشار'),
            subtitle: Text('حالة: قيد التوصيل'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('تحديث الحالة (تجريبي)')));
        },
        icon: const Icon(Icons.check),
        label: const Text('تحديث الحالة'),
      ),
    );
  }
}
