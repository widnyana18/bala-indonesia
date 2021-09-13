import 'package:flutter/material.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';

class FormScreen extends StatelessWidget {
  FormScreen({required this.form, this.dialogWidth});
  final Widget? form;
  final double? dialogWidth;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ResponsiveLayout(
      largeScreen: Dialog(
        child: Container(
          width: size.width * (dialogWidth ?? .3),
          padding: EdgeInsets.all(35),
          child: IntrinsicHeight(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: form!,
            ),
          ),
        ),
      ),
      smallScreen: Material(
        color: Color(0xFF202020),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.keyboard_backspace, color: Colors.grey),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 20),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: form!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
