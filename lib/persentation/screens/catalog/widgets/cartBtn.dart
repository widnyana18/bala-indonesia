import 'package:flutter/material.dart';

class CartBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50, right: 40),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF9A51A), Color(0xFFEB5B24)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        shape: CircleBorder(),
      ),
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Shopping Cart',
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(width: double.infinity, height: double.infinity),
            Icon(Icons.shopping_bag_outlined, color: Colors.white),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Color(0xFFF9A51A),
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
