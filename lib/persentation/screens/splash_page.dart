import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF202020),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/decoration.png',
            fit: BoxFit.contain,
          ),
          Opacity(
            opacity: .7,
            child: Image.asset('images/bg.png', fit: BoxFit.cover),
          ),
          Image.asset(
            'icon/logo.png',
            fit: BoxFit.scaleDown,
            width: 90,
          ),
        ],
      ),
    );
  }
}
