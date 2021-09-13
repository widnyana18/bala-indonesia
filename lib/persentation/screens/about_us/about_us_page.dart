import 'package:bala_indonesia/persentation/components/materials.dart';
import 'package:bala_indonesia/persentation/screens/about_us/widgets/widgets.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isSmall = ResponsiveLayout.isSmallScreen(context);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (ctx, _) =>
            [isSmall ? NavbarNative.header() : NavBarWeb.sliver(context)],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bg.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Color(0xFF202020).withOpacity(.6),
                      BlendMode.dstATop,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    AbstractSection(),
                    VissionSection(),
                  ],
                ),
              ),
              CompanySection(),
              ProductSection(),
              FeatureSection(),
            ],
          ),
        ),
      ),
    );
  }
}
