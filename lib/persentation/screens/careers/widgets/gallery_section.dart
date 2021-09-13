import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GallerySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: ResponsiveLayout(
        largeScreen: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ListView.builder(
                itemExtent: 120,
                itemBuilder: (ctx, idx) => indicator,
              ),
            ),
            SizedBox(width: 28),
            Flexible(
              flex: 6,
              child: PageView.builder(
                itemBuilder: (ctx, idx) => Container(
                  padding: EdgeInsets.only(left: 16, bottom: 16),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/beach.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: desc,
                ),
                itemCount: 3,
              ),
            ),
          ],
        ),
        smallScreen: Column(
          children: [
            PageView.builder(
              itemBuilder: (ctx, idx) => Column(
                children: [
                  Image.asset("images/trash.jpg", fit: BoxFit.cover),
                  desc,
                ],
              ),
              itemCount: 3,
            ),
            SizedBox(height: 20),
            ListView(
              itemExtent: 70,
              scrollDirection: Axis.horizontal,
              children: List.generate(3, (idx) => indicator),
            ),
          ],
        ),
      ),
    );
  }

  Widget indicator = Padding(
    padding: EdgeInsets.only(left: 16, bottom: 16),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.asset(
        "images/beach.jpg",
        fit: BoxFit.cover,
        color: Color(0xFF4E4E4E).withOpacity(.8),
        colorBlendMode: BlendMode.saturation,
      ),
    ),
  );

  Widget desc = Container(
    padding: EdgeInsets.all(30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Excepteur sint occaecat cupidatat"),
        SizedBox(height: 20),
        Text(
          'Lorem ipsum dolor sit amet, consectetur eplos eklosi '
          'adipisifwcing elit, sed doio eiusmod tempor incididunt',
        ),
      ],
    ),
  );
}
