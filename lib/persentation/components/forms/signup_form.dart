import 'package:bala_indonesia/persentation/components/forms/forms.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return FormScreen(
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Register Account',
            textAlign: TextAlign.center,
            style: txtTheme.headline2,
          ),
          SizedBox(height: 60),
          TextFormField(
            onChanged: (value) {},
            validator: (_) {},
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'xxx@example.com',
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            obscureText: true,
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
              labelText: 'Password',
              helperText:
                  'Password must has min 8 character, \n capital, numeric and symbol',
              hintText: '123Dino&mania',
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            obscureText: true,
            onChanged: (value) {},
            validator: (_) {},
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {},
              ),
              labelText: 'Confirm Password',
            ),
          ),
          SizedBox(height: 30),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            value: true,
            onChanged: (isChecked) {},
            title: RichText(
              text: TextSpan(
                text: 'I have read and agree to ',
                style: TextStyle(fontSize: 12),
                children: [
                  TextSpan(
                    text: 'Terms of use ',
                    style: TextStyle(fontSize: 12, color: Color(0xFFEB5B24)),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(fontSize: 12),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(fontSize: 12, color: Color(0xFFEB5B24)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            child: Text('SUBMIT ACCOUNT'),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Have an account? "),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
