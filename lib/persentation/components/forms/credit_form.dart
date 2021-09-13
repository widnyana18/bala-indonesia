import 'package:bala_indonesia/persentation/components/forms/forms.dart';
import 'package:flutter/material.dart';

class CreditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return FormScreen(
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Credit Card',
            textAlign: TextAlign.center,
            style: txtTheme.headline2,
          ),
          SizedBox(
            height: 60,
          ),
          TabBar(
            tabs: [
              Image.asset(
                'icon/visa.png',
                width: 30,
              ),
              Image.asset(
                'icon/visa1.png',
                width: 30,
              ),
            ],
            indicatorColor: Colors.transparent,
            // isScrollable: true,
          ),
          TabBarView(
            children: [
              credit(),
              SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }

  Widget credit() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          onChanged: (value) {},
          validator: (_) {},
          decoration: InputDecoration(labelText: 'Card Number'),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Flexible(
              child: InputDatePickerFormField(
                firstDate: DateTime(2018),
                lastDate: DateTime.now(),
              ),
            ),
            SizedBox(width: 20),
            Flexible(
              child: TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {},
                validator: (_) {},
                decoration: InputDecoration(labelText: 'CVV'),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        TextFormField(
          onChanged: (value) {},
          validator: (_) {},
          decoration: InputDecoration(labelText: 'Cardholder Name'),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: Text('REGISTER CARD'),
        ),
      ],
    );
  }
}
