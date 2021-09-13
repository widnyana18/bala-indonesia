import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          2,
          (idx) => Column(
                children: [
                  SizedBox(
                    height: 165,
                    child: Row(
                      children: [
                        Image.asset(
                          'images/balachips_ori.png',
                          fit: BoxFit.contain,
                        ),
                        description(context),
                      ],
                    ),
                  ),
                  idx == 2 ? SizedBox(height: 20) : Divider(),
                ],
              ))
        ..add(Text('3 items')),
    );
  }

  Widget description(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Balachips S original', style: _textTheme.headline6),
        SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text: 'Size',
            style: TextStyle(color: Color(0xFF7A7A7A), fontSize: 16),
            children: [
              TextSpan(
                text: 'M',
                style: _textTheme.bodyText2,
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
        Row(
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
                    iconSize: 22,
                    onPressed: () {},
                  ),
                  Text('2', style: _textTheme.bodyText2),
                  IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 22,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete_outline),
              iconSize: 22,
              color: Color(0xFFE14B4B),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 15),
        Text('Rp. 85.000', style: _textTheme.headline4),
      ],
    );
  }
}
