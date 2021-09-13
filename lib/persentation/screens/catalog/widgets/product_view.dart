import 'dart:ui';

import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final bool hideDetailsBtn;
  ProductView({this.hideDetailsBtn = false});

  @override
  Widget build(BuildContext context) {
    final isLarge = ResponsiveLayout.isLargeScreen(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        wrapper(isLarge),
        Padding(
          padding: EdgeInsets.only(left: 80),
          child: Image.asset(
            'images/balachips_spicy.png',
            fit: BoxFit.cover,
          ),
        ),
        Offstage(
          offstage: hideDetailsBtn,
          child: Positioned(
            bottom: 0,
            child: DecoratedBox(
              decoration: ShapeDecoration(
                  color: Color(0xFF4A4A4A), shape: CircleBorder()),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.description,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget wrapper(bool isLarge) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: ShapeDecoration(
          shape: CircleBorder(
            side: BorderSide(color: Color(0xFF202020), width: 6),
          ),
        ),
        padding: EdgeInsets.all(isLarge ? 14 : 8),
        child: ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                gradient: RadialGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(.7),
                    Color(0xFF2D2D2D).withOpacity(.35),
                  ],
                ),
              ),
              child: Container(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  gradient: RadialGradient(
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.45),
                      Color(0xFF2D2D2D).withOpacity(.35),
                    ],
                  ),
                ),
                margin: EdgeInsets.all(isLarge ? 40 : 25),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(color: Color(0xFFC11924), width: 6),
                    ),
                  ),
                  margin: EdgeInsets.all(isLarge ? 28 : 18),
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      gradient: RadialGradient(
                        colors: [
                          Color(0xFFC11924),
                          Color(0xFF101010),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.all(isLarge ? 110 : 70),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
