import 'package:flutter/material.dart';

class ActionBlog extends StatelessWidget {
  final Widget? widget;
  ActionBlog({this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton.icon(
          icon: Icon(Icons.favorite, size: 16),
          label: Text('352', style: TextStyle(color: Colors.white)),
          onPressed: () {},
        ),
        SizedBox(width: 32),
        OutlinedButton.icon(
          icon: Icon(Icons.comment_outlined, size: 16),
          label: Text('23', style: TextStyle(color: Colors.white)),
          onPressed: () {},
        ),
        Spacer(),
        widget!,
        Icon(Icons.access_time, size: 16),
        SizedBox(width: 10),
        Text('1h ago'),
      ],
    );
  }
}
