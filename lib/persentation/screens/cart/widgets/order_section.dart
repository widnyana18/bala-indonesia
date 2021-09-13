import 'package:bala_indonesia/persentation/screens/cart/widgets/shopping_note.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class OrderSection extends StatefulWidget {
  final Widget? orderButton;
  OrderSection({this.orderButton});

  @override
  _OrderSectionState createState() => _OrderSectionState();
}

class _OrderSectionState extends State<OrderSection> {
  late TextTheme txtTheme;
  @override
  void initState() {
    super.initState();
    txtTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ResponsiveLayout(
        largeScreen: Row(
          children: [
            Spacer(),
            Flexible(flex: 3, child: productOrdered()),
            SizedBox(width: 20),
            Flexible(
              flex: 6,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Flexible(child: identity()),
                        SizedBox(width: 20),
                        Flexible(child: ShoppingNote.lite(txtTheme)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(child: shoppingAction())
                ],
              ),
            ),
            Spacer(),
          ],
        ),
        mediumScreen: Row(
          children: [
            Flexible(
              child: Column(
                children: [
                  Expanded(flex: 3, child: productOrdered()),
                  SizedBox(height: 20),
                  Expanded(flex: 2, child: ShoppingNote.lite(txtTheme)),
                ],
              ),
            ),
            SizedBox(width: 20),
            Flexible(
              child: Column(
                children: [
                  Expanded(flex: 5, child: identity()),
                  SizedBox(height: 20),
                  Expanded(flex: 2, child: shoppingAction()),
                ],
              ),
            ),
          ],
        ),
        smallScreen: Column(
          children: [
            productOrdered(),
            SizedBox(height: 20),
            identity(),
            SizedBox(height: 20),
            ShoppingNote.lite(txtTheme),
            SizedBox(height: 20),
            shoppingAction(),
          ],
        ),
      ),
    );
  }

  Widget productOrdered() {
    return Card(
      color: Color(0xFF404040),
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Product Ordered', style: txtTheme.headline5),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                physics: ResponsiveLayout.isSmallScreen(context)
                    ? NeverScrollableScrollPhysics()
                    : AlwaysScrollableScrollPhysics(),
                itemBuilder: (ctx, idx) => SizedBox(
                  height: 165,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/balachips_ori.png',
                        fit: BoxFit.contain,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Balachips S original',
                              style: txtTheme.headline6),
                          SizedBox(height: 5),
                          Text('Rp. 85.000', style: txtTheme.headline4),
                        ],
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (ctx, idx) => Divider(),
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget identity() {
    return Column(
      children: [
        Expanded(
          child: Card(
            color: Color(0xFF383838),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Address', style: txtTheme.headline5),
                  SizedBox(height: 16),
                  Text('Mac Deller', style: txtTheme.bodyText2),
                  SizedBox(height: 5),
                  Text('+62 833145825555', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Card(
            color: Color(0xFF4B4B4B),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shipping', style: txtTheme.headline5),
                  SizedBox(height: 16),
                  Text('497 Evergreen Rd. Roseville, CA 95673'),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      text: 'Delivery ',
                      style: TextStyle(fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Free',
                          style:
                              TextStyle(color: Color(0xFFEB5B24), fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Card(
            color: Color(0xFF303030),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment', style: txtTheme.headline5),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Image.asset('icon/visa.png', width: 24),
                      SizedBox(width: 16),
                      Text(
                        'XXXX - XXXX - XXXX - 1908',
                        style: txtTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget shoppingAction() {
    Widget saveBtn = CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      value: true,
      onChanged: (isChecked) {},
      title: Text(
        'Save history order',
        style: TextStyle(fontSize: 12),
      ),
    );

    Widget alternate = Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'Estimated Delivery by ',
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: '01 Feb 2021',
                    style: txtTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
          saveBtn,
          widget.orderButton!,
        ],
      ),
    );

    return Card(
      color: Color(0xFF606060),
      child: ResponsiveLayout(
        largeScreen: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Flexible(child: Text('Rp.290.000', style: txtTheme.headline4)),
              VerticalDivider(
                thickness: 8,
                color: Color(0xFF202020),
              ),
              Flexible(
                child: RichText(
                  text: TextSpan(
                    text: 'Estimated Delivery by ',
                    style: TextStyle(fontSize: 16),
                    children: [
                      TextSpan(
                        text: '01 Feb 2021',
                        style: txtTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ),
              VerticalDivider(
                thickness: 8,
                color: Color(0xFF202020),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      saveBtn,
                      widget.orderButton!,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        mediumScreen: alternate,
        smallScreen: alternate,
      ),
    );
  }
}
