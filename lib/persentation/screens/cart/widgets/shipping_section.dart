import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ShippingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: '(936) 361-0310',
            labelText: 'Contact',
            suffixIcon: IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(height: 22),
        TextFormField(
          decoration: InputDecoration(
            hintText: '1131 Dusty Townline, Jacksonville, TX 40322',
            labelText: 'Shipping Address',
            suffixIcon: IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(height: 50),
        Text('Shipment Method', style: txtTheme.headline5),
        SizedBox(height: 12),
      ]..addAll(
          List.generate(
            shipping.length,
            (idx) => RadioListTile(
              value: idx,
              groupValue: idx,
              onChanged: (idx) {},
              contentPadding: EdgeInsets.zero,
              title: RichText(
                text: TextSpan(
                  text: shipping[idx].values.first,
                  style: txtTheme.bodyText2,
                  children: [
                    TextSpan(
                      text: shipping[idx].values.last,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ).toList(),
        ),
    );
  }

  List<Map<String, String>> shipping = [
    {'prefix': 'free ', 'suffix': 'Regular Shipping (7 days)'},
    {'prefix': 'Rp. 8.000 ', 'suffix': 'Express Shipping (3 days)'},
    {'prefix': 'Rp. 12.000 ', 'suffix': 'Priority Shipping (1 day)'},
  ];
}
