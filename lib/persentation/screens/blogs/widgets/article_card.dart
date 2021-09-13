import 'dart:ui';

import 'package:bala_indonesia/persentation/screens/blogs/widgets/action_blog.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final VoidCallback? eventMobile;
  final VoidCallback? eventWeb;
  ArticleCard({this.eventMobile, this.eventWeb});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ResponsiveLayout.isSmallScreen(context) ? eventMobile : eventWeb,
      child: MouseRegion(
        onEnter: (_) {},
        onExit: (_) {},
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/fox-book.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(6),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 800),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF343434),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(6)),
                ),
                child: overlay(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget overlay(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Offstage(
          offstage: true,
          child: Text('23', style: txtTheme.headline5),
        ),
        Offstage(
          offstage: true,
          child: ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage('images/person.jpg')),
            title: Text('Nick Carloss', style: txtTheme.bodyText2),
          ),
        ),
        ActionBlog(),
      ],
    );
  }
}
