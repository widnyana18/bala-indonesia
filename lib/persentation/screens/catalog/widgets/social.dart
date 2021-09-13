import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MediaSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isLarge = ResponsiveLayout.isLargeScreen(context);
    return Flex(
      direction: isLarge ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: src
          .map(
            (item) => IconButton(
              icon: Icon(
                item,
                color: Color(0xFF585858),
                size: 20,
              ),
              onPressed: () {},
            ),
          )
          .toList(),
    );
  }

  List<IconData> src = [
    FontAwesomeIcons.whatsapp,
    Icons.email,
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.youtube,
  ];
}
