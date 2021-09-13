import 'package:flutter/material.dart';

class AddressSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...addressTile(context),
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

  List<Widget> addressTile(BuildContext context) {
    final _txtTheme = Theme.of(context).textTheme;
    return List.generate(
      2,
      (idx) => Row(
        children: [
          Radio(
            value: idx,
            groupValue: 0,
            onChanged: (idx) {},
          ),
          SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Zevanya Zica', style: _txtTheme.headline4),
                SizedBox(height: 16),
                Text(
                  'Jl. Wayan gebyag no.69 Denpasar',
                  style: _txtTheme.bodyText2,
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Contact',
                    style: TextStyle(color: Color(0xFF7A7A7A), fontSize: 16),
                    children: [
                      TextSpan(
                        text: '+62 833145825555',
                        style: _txtTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.delete_outlined),
            color: Color(0xFFE14B4B),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
