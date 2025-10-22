import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screens/landing.dart';
import 'screens/customer_home.dart';
import 'screens/admin_panel.dart';
import 'screens/courier_panel.dart';
import 'screens/staff_panel.dart';
import 'screens/support_panel.dart';

void main() {
  runApp(const WasalniAlamiApp());
}

class WasalniAlamiApp extends StatelessWidget {
  const WasalniAlamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xFFE8C547),
      scaffoldBackgroundColor: const Color(0xFF0E0E0E),
      textTheme: GoogleFonts.cairoTextTheme(ThemeData.dark().textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF0E0E0E),
        elevation: 0,
      ),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: const Color(0xFFE8C547),
        secondary: const Color(0xFFB58E18),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'وصلني عالمي',
      theme: theme,
      routes: {
        '/': (_) => const LandingScreen(),
        '/customer': (_) => const CustomerHomeScreen(),
        '/admin': (_) => const AdminPanelScreen(),
        '/courier': (_) => const CourierPanelScreen(),
        '/staff': (_) => const StaffPanelScreen(),
        '/support': (_) => const SupportPanelScreen(),
      },
    );
  }
}
