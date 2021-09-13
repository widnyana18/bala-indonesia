import 'package:bala_indonesia/persentation/components/messages/message_screen.dart';
import 'package:flutter/material.dart';

class CookiesDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return MessageScreen(
      content: [
        Image.asset(
          'images/cookies.png',
          fit: BoxFit.scaleDown,
        ),
        SizedBox(height: 35),
        Text(
          'We Use Cookies',
          textAlign: TextAlign.center,
          style: txtTheme.headline2,
        ),
        SizedBox(height: 15),
        Text(
          'Please, accept these cookies to ensue we give you the best experience on our web.',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 35),
        ElevatedButton(
          child: Text('ACCEPT COOKIES'),
          onPressed: () {},
        ),
        SizedBox(height: 12),
        ElevatedButton(
          child: Text('LEARN MORE'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(primary: Color(0xFF363636)),
        ),
      ],
    );
  }
}
