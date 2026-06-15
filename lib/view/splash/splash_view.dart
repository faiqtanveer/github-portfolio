import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio/view/portfolio/portfolio_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  // Palette pulled from the portfolio (index.html design tokens)
  static const _ink = Color(0xFF0A0F12);
  static const _aqua = Color(0xFF3AD7C4);
  static const _gold = Color(0xFFE9B24C);
  static const _text = Color(0xFFE9F2F1);

  late final AnimationController _c;
  late final Animation<double> _fade;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    // One 3s controller drives the entrance AND the progress bar.
    _c = AnimationController(vsync: this, duration: const Duration(seconds: 3));

    _fade = CurvedAnimation(
      parent: _c,
      curve: const Interval(0.0, 0.25, curve: Curves.easeOut),
    );
    _scale = Tween<double>(begin: 0.82, end: 1.0).animate(
      CurvedAnimation(
        parent: _c,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOutBack),
      ),
    );

    // When the bar finishes filling, go to the HTML portfolio.
    _c.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const PortfolioPage()),
        );
      }
    });

    _c.forward();
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _ink,
      body: Stack(
        children: [
          // Ambient glows that echo the portfolio's background.
          Positioned(
            top: -130,
            right: -90,
            child: _glow(380, _aqua.withOpacity(0.16)),
          ),
          Positioned(
            bottom: -150,
            left: -110,
            child: _glow(360, _gold.withOpacity(0.10)),
          ),
          Center(
            child: FadeTransition(
              opacity: _fade,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // The "FT" gradient mark — the portfolio's signature element.
                  ScaleTransition(
                    scale: _scale,
                    child: Container(
                      width: 88,
                      height: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [_aqua, _gold],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: _aqua.withOpacity(0.35),
                            blurRadius: 44,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'FT',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF05221F),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Faiq Tanveer',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: _text,
                      letterSpacing: 0.3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 12,
                      color: _aqua,
                      letterSpacing: 3.5,
                    ),
                  ),
                  const SizedBox(height: 42),
                  // Slim gradient progress line that fills across the 3s.
                  AnimatedBuilder(
                    animation: _c,
                    builder: (context, _) => Container(
                      width: 220,
                      height: 3,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(99),
                      ),
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: _c.value,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            gradient: const LinearGradient(
                              colors: [_aqua, _gold],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _glow(double size, Color color) => Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: RadialGradient(colors: [color, Colors.transparent]),
    ),
  );
}