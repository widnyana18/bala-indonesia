import 'package:bala_indonesia/persentation/components/materials.dart';
import 'package:bala_indonesia/persentation/screens/catalog/widgets/widgets.dart';
import 'package:bala_indonesia/persentation/screens/screens.dart';
import 'package:bala_indonesia/persentation/utils/utils.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    final large = MediaQuery.of(context).size.width;
    return ResponsiveLayout(
      largeScreen: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: NavBarWeb(),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'images/bg.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Image.asset(
              'images/decoration.png',
              fit: BoxFit.cover,
            ),
            Column(
              children: <Widget>[
                Spacer(),
                Expanded(
                  flex: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductMenu(),
                      ProductView(),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Column(
                          children: [
                            line,
                            SizedBox(height: 30),
                            MediaSocial(),
                            SizedBox(height: 30),
                            line,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Footer(),
              ],
            ),
            ProductDetails(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CartBtn(),
      ),
      mediumScreen: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: NavBarWeb(),
        ),
        drawer: Drawer(
          child: SizedBox(width: large * .82, child: OrderHistoryPage()),
        ),
        endDrawer: Drawer(
          child: SizedBox(
            width: large * .62,
            child: ProductDetails(),
          ),
        ),
        floatingActionButton: CartBtn(),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/bg.png', fit: BoxFit.fill),
            Image.asset(
              'images/decoration.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(height: 40),
                  ProductMenu.alternate(),
                  SizedBox(height: 40),
                  Expanded(child: ProductView()),
                  SizedBox(height: 40),
                  MediaSocial(),
                  SizedBox(height: 60),
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
      smallScreen: Scaffold(
        drawer: NavbarNative(),
        bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (ctx) => ProductDetails(),
        ),
        endDrawer: Drawer(child: OrderHistoryPage()),
        floatingActionButton: CartBtn(),
        body: NestedScrollView(
          headerSliverBuilder: (ctx, isScroll) => [
            NavbarNative.header(),
            SliverPersistentHeader(
              delegate: SliverHeaderDelegate(
                minHeight: 40,
                maxHeight: 45,
                child: ProductMenu.alternate(),
              ),
            ),
          ],
          body: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('images/bg.png', fit: BoxFit.fill),
              Image.asset(
                'images/decoration.png',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(height: 40),
                      ProductView(),
                      SizedBox(height: 40),
                      Footer.mobile(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget line = Container(
    width: 3,
    height: 90,
    decoration: ShapeDecoration(
      color: Color(0xFF585858),
      shape: StadiumBorder(),
    ),
  );
}
