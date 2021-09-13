import 'package:bala_indonesia/persentation/screens/catalog/widgets/social.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  static Widget mobile(BuildContext context) => Container(
        color: Color(0xFF202020),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: Column(
          children: [
            SizedBox(height: 25),
            MediaSocial(),
            SizedBox(height: 50),
            Wrap(
              children: menu
                  .map((item) => TextButton(
                        child: Text(item.name),
                        onPressed: item.onTap,
                      ))
                  .toList(),
            ),
            SizedBox(height: 30),
            Text(
              '© Balaindonesia 2021',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '© Balaindonesia 2021',
            style: Theme.of(context).textTheme.caption,
          ),
          Row(
            children: menu
                .map((item) => TextButton(
                      child: Text(item.name),
                      onPressed: item.onTap,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  static List<MenuFooter> menu = [
    MenuFooter('Stakeholder', () {}),
    MenuFooter('Privacy Policy', () {}),
    MenuFooter('FAQ', () {}),
    MenuFooter('Terms & Condition', () {}),
    MenuFooter('Work with Us', () {}),
  ];
}

class MenuFooter {
  final String name;
  final VoidCallback onTap;

  MenuFooter(this.name, this.onTap);
}
