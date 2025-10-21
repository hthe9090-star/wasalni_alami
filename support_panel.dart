import 'package:flutter/material.dart';

class SupportPanelScreen extends StatelessWidget {
  const SupportPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الدعم الفني (تجريبي)')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('محادثة #CH-221'),
            subtitle: Text('عميل: تأخير بسيط في التوصيل'),
          ),
        ],
      ),
    );
  }
}