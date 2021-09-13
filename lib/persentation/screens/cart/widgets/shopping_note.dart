import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class ShoppingNote extends StatelessWidget {
  final Widget? shoppingButton;
  ShoppingNote({this.shoppingButton});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          lite(txtTheme),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TOTAL',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Rp.212.000',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 28),
              RichText(
                text: TextSpan(
                  text: 'Estimated Delivery by ',
                  style: TextStyle(fontSize: 16),
                  children: [
                    TextSpan(
                      text: '01 Des 2021',
                      style: txtTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),
              TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xFF3D3D3D),
                  hintText: '3610',
                  labelText: 'Coupon Code',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.label),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(height: 14),
              Offstage(
                offstage: ResponsiveLayout.isSmallScreen(context),
                child: shoppingButton,
              )
            ],
          ),
        ],
      ),
    );
  }

  static Widget lite(TextTheme txtTheme) {
    Map<String, String> note = {
      'Order Date': '21 Sep 2021 - 3:45 PM',
      'Price': 'Rp. 319.000',
      'Discount': 'Rp. 14.000',
      'Shipping': 'Free',
      'Coupon Applied': 'Rp.0',
    };

    return Column(
      children: [
        Text('Order Summary', style: txtTheme.headline4),
        SizedBox(height: 40),
        ...note.entries.map(
          (item) => Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.key,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  item.value,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
