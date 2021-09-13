import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({required this.content});
  final List<Widget>? content;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Dialog(
      child: Container(
        constraints: BoxConstraints(maxWidth: size.width),
        width: size.width * .3,
        padding: EdgeInsets.all(35),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: content!,
          ),
        ),
      ),
    );
  }
}
