import 'package:bala_indonesia/persentation/components/forms/forms.dart';
import 'package:flutter/material.dart';

class ResetPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return FormScreen(
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Reset Password',
            textAlign: TextAlign.center,
            style: txtTheme.headline2,
          ),
          SizedBox(
            height: 60,
          ),
          TextFormField(
            obscureText: true,
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
              labelText: 'Old Password',
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            obscureText: true,
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
              labelText: 'New Password',
              helperText:
                  'Password must has min 8 character, \n capital, numeric and symbol',
              hintText: '123Dino&mania',
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            obscureText: true,
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
              labelText: 'Confirm New Password',
              hintText: 'password must same',
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('SAVE NEW PASSWORD'),
          ),
        ],
      ),
    );
  }
}
