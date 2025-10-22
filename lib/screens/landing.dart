import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('وصلني عالمي – شركة توصيل لجميع محافظات العراق')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: Center(
                child: SvgPicture.asset('assets/images/logo.svg', width: 220, height: 220),
              ),
            ),
            const SizedBox(height: 16),
            _roleButton(context, 'العميل', '/customer'),
            _roleButton(context, 'المدير', '/admin'),
            _roleButton(context, 'المندوب', '/courier'),
            _roleButton(context, 'الموظف', '/staff'),
            _roleButton(context, 'الدعم الفني', '/support'),
            const SizedBox(height: 16),
            Text('v0.1.0 (Beta)', textAlign: TextAlign.center, style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }

  Widget _roleButton(BuildContext ctx, String label, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE8C547),
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        onPressed: () => Navigator.pushNamed(ctx, route),
        child: Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
