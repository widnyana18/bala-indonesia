import 'package:bala_indonesia/persentation/components/forms/forms.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class UserAddressForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return FormScreen(
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'User Identity',
            textAlign: TextAlign.center,
            style: txtTheme.headline2,
          ),
          SizedBox(
            height: 60,
          ),
          TextFormField(
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.number,
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: '812308213',
                prefixText: '+62'),
          ),
          SizedBox(height: 30),
          DropdownSearch<String>(
            items: <String>['Bali', 'Jogjakarta', 'Surabaya'],
            label: 'Province',
            mode: Mode.MENU,
            onChanged: (_) {},
            onFind: (_) async {
              return [];
            },
            popupBackgroundColor: Theme.of(context).canvasColor,
            showSelectedItem: true,
            showSearchBox: true,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Flexible(
                child: DropdownSearch<String>(
                  items: <String>[
                    'Denpasar',
                    'Mangupura',
                    'Gianyar',
                    'Tabanan'
                  ],
                  label: 'City',
                  mode: Mode.MENU,
                  onChanged: (_) {},
                  onFind: (_) async {
                    return [];
                  },
                  popupBackgroundColor: Theme.of(context).canvasColor,
                  showSelectedItem: true,
                  showSearchBox: true,
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {},
                  validator: (_) {},
                  decoration: InputDecoration(labelText: 'Zip Code'),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          TextFormField(
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
                labelText: 'Address', hintText: 'Jln.ngurah rai...'),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text('SUBMIT ACCOUNT'),
          ),
        ],
      ),
    );
  }
}
