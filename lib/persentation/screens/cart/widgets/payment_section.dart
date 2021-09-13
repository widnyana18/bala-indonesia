import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text('Shipment Method', style: txtTheme.headline5),
        SizedBox(height: 12),
        ...creditTile(txtTheme),
        SizedBox(height: 30),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add, color: Color(0xFFEB5B24)),
          label: Text(
            'ADD NEW ADDRESS',
            style: TextStyle(
              color: Color(0xFFEB5B24),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> creditTile(TextTheme txtTheme) {
    return List.generate(
      2,
      (idx) => RadioListTile(
        value: idx,
        groupValue: idx,
        onChanged: (idx) {},
        tileColor: Color(0xFF373737),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('icon/visa.png', fit: BoxFit.contain),
            Text('•••••2345', style: txtTheme.headline6),
            Text(
              'Expires 06/2021',
              style: TextStyle(color: Color(0xFFADADAD), fontSize: 16),
            ),
          ],
        ),
        secondary: IconButton(
          icon: Icon(Icons.delete_outlined),
          color: Color(0xFFE14B4B),
          onPressed: () {},
        ),
      ),
    );
  }
}

class CreditTile {
  CreditTile({this.bank, this.creditNumber, this.expires});

  final String? bank;
  final String? creditNumber;
  final String? expires;
}
