import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Balachips S Spicy', style: txtTheme.headline4),
        SizedBox(height: 20),
        Flex(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          direction: ResponsiveLayout.isLargeScreen(context)
              ? Axis.horizontal
              : Axis.vertical,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF2D2D2D), width: 2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.minus),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                  Text('2', style: txtTheme.bodyText2),
                  IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Material(
              color: Color(0xFF2D2D2D),
              borderRadius: BorderRadius.circular(6),
              child: DropdownButton(
                items: [
                  DropdownMenuItem(
                    value: 0,
                    child: Text('PCS', style: txtTheme.bodyText2),
                  ),
                  DropdownMenuItem(
                    value: 0,
                    child: Text('BOX', style: txtTheme.bodyText2),
                  ),
                ],
                dropdownColor: Color(0xFF2D2D2D),
              ),
            ),
            SizedBox(height: 16, width: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.white),
              label: Text('Rp. 20.000', style: txtTheme.headline4),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 16),
        Text('Free 2-5 day shipping  •  Tool-free assembly  •  30-day trial'),
      ],
    );
  }
}
