import 'package:bala_indonesia/persentation/components/messages/message_screen.dart';
import 'package:flutter/material.dart';

class DeleteUserDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return MessageScreen(
      content: [
        Text(
          'Delete Account',
          textAlign: TextAlign.center,
          style: txtTheme.headline2,
        ),
        SizedBox(height: 45),
        Image.asset(
          'images/delete.png',
          fit: BoxFit.scaleDown,
        ),
        SizedBox(height: 35),
        Text(
          'Are you sure won’t delete this account ? Your history will be deleted.',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 35),
        ElevatedButton(
          child: Text('CONTINUE TO DELETE'),
          onPressed: () {},
        ),
      ],
    );
  }
}
