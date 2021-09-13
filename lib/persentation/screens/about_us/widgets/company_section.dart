import 'dart:ui';

import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class CompanySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'images/trash.jpg',
          fit: BoxFit.cover,
          color: Color(0xFF4E4E4E).withOpacity(.3),
          colorBlendMode: BlendMode.luminosity,
        ),
        Flex(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          direction: ResponsiveLayout.isSmallScreen(context)
              ? Axis.vertical
              : Axis.horizontal,
          children: attribute.map((item) => card(context, item)).toList(),
        ),
      ],
    );
  }

  Widget card(BuildContext context, CompanyAttribute item) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: () {},
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 280,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF4E4E4E).withOpacity(.65),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Icon(
                      item.icon,
                      size: 90,
                      color: Color(0xFFEB5B24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(item.label!,
                        style: Theme.of(context).textTheme.headline6),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<CompanyAttribute> attribute = [
    CompanyAttribute(
      icon: Icons.groups_outlined,
      label: 'EMPLOYEES',
      value: '5',
    ),
    CompanyAttribute(
      icon: Icons.calendar_view_day_outlined,
      label: 'BIRTH',
      value: '2019',
    ),
    CompanyAttribute(
      icon: Icons.location_on_outlined,
      label: 'LOCATION',
      value: 'Jl.supratman, DenTim',
    ),
  ];
}

class CompanyAttribute {
  CompanyAttribute({this.icon, this.label, this.value});

  final IconData? icon;
  final String? label;
  final String? value;
}
