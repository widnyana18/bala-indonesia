import 'package:bala_indonesia/persentation/components/messages/message_screen.dart';
import 'package:flutter/material.dart';

class SuccessOrderDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return MessageScreen(
      content: [
        Text(
          'Your Balachips Order is  Confirmend - Thank you for order our product',
          textAlign: TextAlign.center,
          style: txtTheme.headline2,
        ),
        SizedBox(height: 45),
        Image.asset(
          'images/success.png',
          fit: BoxFit.scaleDown,
        ),
        SizedBox(height: 35),
        Text(
          'We have sent an order note to your email, please check your email to see details order and progress of delivery !!',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 35),
        ElevatedButton(
          child: Text('CHECK YOUR EMAIL'),
          onPressed: () {},
        ),
        SizedBox(height: 12),
        ElevatedButton(
          child: Text('BACK TO HOME'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(primary: Color(0xFF363636)),
        ),
      ],
    );
  }
}
