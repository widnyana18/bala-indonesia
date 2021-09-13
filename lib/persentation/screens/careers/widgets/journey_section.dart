import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';

class JourneySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final rndHeight = 450 - Random().nextInt(50).toDouble();

    return ResponsiveLayout(
      largeScreen: Row(
        children: [
          Flexible(flex: 2, child: careersDesc(txtTheme)),
          Flexible(
            flex: 4,
            child: StaggeredGridView.extentBuilder(
              itemCount: 7,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              maxCrossAxisExtent: 340,
              itemBuilder: (ctx, idx) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/trash.jpg'),
                    ),
                    border: Border.all(color: Color(0xFF202020), width: 2),
                  ),
                );
              },
              staggeredTileBuilder: (idx) {
                if (idx == 1) return StaggeredTile.extent(2, rndHeight);
                return StaggeredTile.extent(1, rndHeight);
              },
            ),
          ),
        ],
      ),
      smallScreen: StaggeredGridView.extentBuilder(
        itemCount: 7,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        maxCrossAxisExtent: 340,
        itemBuilder: (ctx, idx) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/beach.jpg'),
              ),
              border: Border.all(color: Color(0xFF202020), width: 2),
            ),
          );
        },
        staggeredTileBuilder: (idx) {
          if (idx == 1) return StaggeredTile.extent(2, rndHeight);
          return StaggeredTile.extent(1, rndHeight);
        },
      ),
    );
  }

  Widget careersDesc(TextTheme txtTheme) => Material(
        color: Color(0xFF363636),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "PORTFOLIO",
              style: TextStyle(
                color: Color(0xFFEB5B24),
              ),
            ),
            Text("Excepteur sint occaeuiecat", style: txtTheme.headline1),
            Text(
              'Culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus '
              'error sit voluptartem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo '
              'inventore veritatis et quasi ropeior architecto beatae vitae dicta sunt explicabo. Nemo eniem ipsam voluptatem '
              'quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eosep quiklop ratione '
              'voluptatem sequi nesciunt. Neque porro quisquam est, quepi dolorem ipsum quia dolor srit amet, consectetur '
              'adipisci velit, seid quia non numquam eiuris modi tempora incidunt ut labore et dolore magnam aliquam quaerat '
              'iope voluptatem.Lorem ipsum dolor sit amet, consectetur adipisifwcing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore roipi magna aliqua. Ut enim ad minim veeniam, quis nostruklad '
              'exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
              'in tufpoy voluptate velit esse cillum dolore eu fugiat nulla parieratur. Excepteur sint occaecat cupidatat.',
            ),
          ],
        ),
      );
}
