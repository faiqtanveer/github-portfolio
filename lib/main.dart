import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/splash/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

void main() {
  ui_web.platformViewRegistry.registerViewFactory(
    'portfolio-html',
        (int viewId) => html.IFrameElement()
      ..src = 'portfolio.html'
      ..style.border = 'none'
      ..style.width = '100%'
      ..style.height = '100%',
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFF0A0F12),
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white,)
            .copyWith(
          bodyLarge: const TextStyle(color: bodyTextColor),
          bodyMedium: const TextStyle(color: bodyTextColor),
        ),
      ),

      title: 'Muhammad Faiq Tanveer – Senior Flutter Developer',
      home: const SplashView(),
    );
  }
}


