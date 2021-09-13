import 'package:bala_indonesia/persentation/components/materials.dart';
import 'package:bala_indonesia/persentation/screens/careers/widgets/widgets.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class CareersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isSmall = ResponsiveLayout.isSmallScreen(context);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (ctx, _) =>
            [isSmall ? NavbarNative.header() : NavBarWeb.sliver(context)],
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                JourneySection(),
                GallerySection(),
                SizedBox(height: 40),
                StakeholderSection(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
