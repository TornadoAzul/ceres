// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FondoAnimacion extends StatefulWidget {
  const FondoAnimacion({super.key});

  @override
  _FondoAnimacionState createState() => _FondoAnimacionState();
}

class _FondoAnimacionState extends State<FondoAnimacion>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat(reverse: true);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    _colorAnimation = ColorTween(
      begin: isDarkMode ? const Color(0xFF282828) : const Color(0xFFFFFFFF),
      end: isDarkMode ? const Color(0xFF777777) : const Color(0xFFFF7791),
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final color = _colorAnimation.value;

        return Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.topLeft,
              radius: 1.5,
              colors: [
                color!,
                Theme.of(context).brightness == Brightness.dark
                    ? const Color(0xFF282828)
                    : const Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: child,
        );
      },
      child: const SizedBox.expand(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
