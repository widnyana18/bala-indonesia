import 'package:bala_indonesia/persentation/components/messages/message_screen.dart';
import 'package:flutter/material.dart';

class LogoutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return MessageScreen(
      content: [
        Text(
          'Good bye Rodriguess',
          textAlign: TextAlign.center,
          style: txtTheme.headline2,
        ),
        SizedBox(height: 45),
        Image.asset(
          'images/log_out.png',
          fit: BoxFit.scaleDown,
        ),
        SizedBox(height: 35),
        Text(
          'Your account has been logout,  try login  to enter the app.',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 35),
        ElevatedButton(
          child: Text('OKOK'),
          onPressed: () {},
        ),
      ],
    );
  }
}
