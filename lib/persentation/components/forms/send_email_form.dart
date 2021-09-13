import 'package:bala_indonesia/persentation/components/forms/forms.dart';
import 'package:flutter/material.dart';

class SendEmailForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormScreen(
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Email Verification',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 60,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'xxx@example.com',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('SEND LINK IN EMAIL'),
          ),
        ],
      ),
    );
  }
}
