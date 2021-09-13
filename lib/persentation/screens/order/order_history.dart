import 'package:bala_indonesia/persentation/screens/order/widgets/order_card.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Use Previous Order for Shopping',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        SizedBox(height: 35),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 270,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: .8,
          ),
          itemCount: 2,
          itemBuilder: (ctx, idx) => OrderCard(),
        ),
      ],
    );
  }
}
