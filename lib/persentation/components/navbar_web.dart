import 'package:flutter/material.dart';

List<Widget> navList = [
  TextButton(onPressed: () {}, child: Text('MyShopping')),
  TextButton(onPressed: () {}, child: Text('Careers')),
  TextButton(onPressed: () {}, child: Text('Blogs')),
  TextButton(onPressed: () {}, child: Text('About Us')),
];

List<Widget> get guestNav => navList..removeAt(0);

class NavBarWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [loginBtn(context)],
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
          children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset('icon/logo.png', width: 90),
        ),
        Spacer()
      ]..addAll(guestNav)),
    );
  }

  static Widget sliver(BuildContext context) => SliverAppBar(
        actions: [loginBtn(context)],
        title: Row(
            children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset('icon/logo.png', width: 90),
          ),
          Spacer()
        ]..addAll(guestNav)),
        floating: true,
        snap: true,
      );

  static Widget loginBtn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 22, top: 8, bottom: 8),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF9A51A), Color(0xFFEB5B24)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: Colors.transparent),
        child: Text(
          'LOGIN',
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
