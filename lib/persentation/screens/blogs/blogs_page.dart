import 'dart:math';

import 'package:bala_indonesia/persentation/components/materials.dart';
import 'package:bala_indonesia/persentation/screens/blogs/blog_details.dart';
import 'package:bala_indonesia/persentation/screens/blogs/widgets/article_card.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BlogsPage extends StatefulWidget {
  @override
  _BlogsPageState createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animLeftControll;
  late AnimationController _animRightControll;

  @override
  void initState() {
    super.initState();

    _animLeftControll =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animRightControll = _animLeftControll;

    _animLeftControll.value = 1;
    _animRightControll.value = 0;
  }

  @override
  void dispose() {
    super.dispose();
    _animLeftControll.dispose();
    _animRightControll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSmall = ResponsiveLayout.isSmallScreen(context);
    final rndHeight = 450 - Random().nextInt(50).toDouble();

    final _animateLeft = IntTween(begin: 1, end: 2).animate(_animLeftControll);
    final _animateRight =
        IntTween(begin: 0, end: 4).animate(_animRightControll);

    return Scaffold(
      endDrawer: isSmall ? null : Drawer(child: ReviewProduct()),
      bottomSheet: isSmall
          ? BottomSheet(
              onClosing: () {},
              builder: (ctx) => BlogsDetails(),
            )
          : null,
      body: NestedScrollView(
        headerSliverBuilder: (ctx, _) =>
            [isSmall ? NavbarNative.header() : NavBarWeb.sliver(context)],
        body: ResponsiveLayout(
          largeScreen: Row(
            children: [
              Flexible(
                flex: _animateLeft.value,
                child: StaggeredGridView.extentBuilder(
                  itemCount: 7,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  padding: EdgeInsets.all(20),
                  maxCrossAxisExtent: 340,
                  itemBuilder: (ctx, idx) {
                    if (idx == 1)
                      return category();
                    else if (idx == 3) {
                      return activity(context);
                    } else {
                      return ArticleCard(
                        eventWeb: () {
                          if (_animateLeft.value == 1 &&
                              _animateRight.value == 0) {
                            _animLeftControll.forward();
                            _animRightControll.forward();
                          } else {
                            _animLeftControll.reverse();
                            _animRightControll.reverse();
                          }
                        },
                      );
                    }
                  },
                  staggeredTileBuilder: (idx) {
                    if (idx == 0) return StaggeredTile.extent(2, rndHeight);
                    return StaggeredTile.extent(1, rndHeight);
                  },
                ),
              ),
              Flexible(
                flex: _animateRight.value,
                child: BlogsDetails(),
              ),
            ],
          ),
          smallScreen: PageView(
            children: [
              ListView.builder(
                itemBuilder: (ctx, idx) {
                  if (idx == 1) {
                    return category();
                  } else if (idx == 3) {
                    return activity(context);
                  } else {
                    return ArticleCard(
                      eventWeb: () {
                        if (_animateLeft.value == 1 &&
                            _animateRight.value == 0) {
                          _animLeftControll.forward();
                          _animRightControll.forward();
                        } else {
                          _animLeftControll.reverse();
                          _animRightControll.reverse();
                        }
                      },
                    );
                  }
                },
              ),
              BlogsDetails(),
            ],
          ),
        ),
      ),
    );
  }

  Widget category() {
    List<String> tag = ['MAGGOT BSF', 'WASTE MANAGEMENT', 'ORGANIC FOOD'];
    final rndColor = (0xFFFFFFFF * Random().nextDouble()).toInt();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: tag
          .map(
            (item) => ElevatedButton(
              onPressed: () {},
              child: Text(item),
              style: ElevatedButton.styleFrom(primary: Color(rndColor)),
            ),
          )
          .toList(),
    );
  }

  Widget activity(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Color(0xFFEB5B24),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ACTIVITY'),
          SizedBox(height: 24),
          Text('Lorem ipsum dolor sit amet, consectetur adipisicing.',
              style: txtTheme.headline5),
          SizedBox(height: 12),
          Text(
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt',
          ),
          Spacer(),
          Row(
            children: [
              Icon(Icons.location_on_outlined, size: 17),
              SizedBox(width: 16),
              Flexible(
                child: Text(
                  '497 Evergreen Rd. Roseville, CA 95673',
                  style: txtTheme.bodyText2,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.schedule_outlined, size: 17),
              SizedBox(width: 16),
              Flexible(
                child: Text(
                  '21 Sep 2021 - 3:45 PM',
                  style: txtTheme.bodyText2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
