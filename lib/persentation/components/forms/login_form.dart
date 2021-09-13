import 'package:bala_indonesia/persentation/components/forms/forms.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return FormScreen(
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Login',
            textAlign: TextAlign.center,
            style: txtTheme.headline2,
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
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text("Forget Password? "),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Reset',
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
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('SUBMIT ACCOUNT'),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign up',
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
