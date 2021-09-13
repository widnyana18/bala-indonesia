import 'package:bala_indonesia/persentation/screens/catalog/widgets/product_view.dart';
import 'package:bala_indonesia/persentation/screens/product_details/widgets/order_count.dart';
import 'package:bala_indonesia/persentation/components/review_product.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late TextTheme txtTheme;

  @override
  void initState() {
    super.initState();
    txtTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    final large = MediaQuery.of(context).size.width;

    return ResponsiveLayout(
      largeScreen: AnimatedPositioned(
        right: -large * .86,
        width: large * .86,
        duration: Duration(seconds: 2),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            AspectRatio(
              aspectRatio: .95,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF202020), Colors.transparent],
                    begin: Alignment(1, -.85),
                    end: Alignment(-1, .75),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Spacer(flex: 2),
                          Flexible(flex: 3, child: description()),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF202020), Colors.transparent],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF202020).withOpacity(.8),
                            blurRadius: 18,
                            offset: Offset(0, -20),
                          )
                        ],
                      ),
                      child: OrderCount(),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              width: large * .43,
              child: Column(
                children: [
                  Spacer(),
                  DecoratedBox(
                    decoration: ShapeDecoration(
                      color: Color(0xFF2B2B2B),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Spacer(),
                  Expanded(flex: 2, child: ProductView(hideDetailsBtn: true)),
                  Spacer(),
                  DecoratedBox(
                    decoration: ShapeDecoration(
                      color: Color(0xFF424242),
                      shape: CircleBorder(),
                    ),
                    child: Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_bag_outlined, size: 32),
                        ),
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
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
      mediumScreen: description(),
      smallScreen: description(),
    );
  }

  Widget description() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(22.0),
        child: Column(
          children: [
            header(),
            SizedBox(height: 35),
            productFlavor(),
            SizedBox(height: 35),
            productSize(),
            SizedBox(height: 35),
            ExpansionPanelList(
              dividerColor: Color(0xFF464646),
              expandedHeaderPadding: EdgeInsets.zero,
              children: panels
                  .map(
                    (item) => ExpansionPanel(
                      canTapOnHeader: true,
                      backgroundColor: Colors.transparent,
                      headerBuilder: (ctx, collaped) => ListTile(
                        title: Text(item.title, style: txtTheme.headline6),
                      ),
                      body: item.body,
                    ),
                  )
                  .toList(),
            ),
            Offstage(
              offstage: ResponsiveLayout.isLargeScreen(context),
              child: OrderCount(),
            ),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Row(
      children: [
        Icon(Icons.sell_outlined),
        SizedBox(width: 8),
        RichText(
          text: TextSpan(
            text: 'Sold ',
            style: TextStyle(fontSize: 16),
            children: [TextSpan(text: ' 25', style: txtTheme.bodyText2)],
          ),
        ),
        SizedBox(width: 30),
        Icon(Icons.remove_red_eye_outlined),
        SizedBox(width: 8),
        Text('202', style: txtTheme.bodyText2),
        Spacer(),
        Icon(Icons.share),
      ],
    );
  }

  Widget productFlavor() {
    int selectedIdx = 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        flavor.length,
        (idx) => GestureDetector(
          onTap: () {
            setState(() => selectedIdx = idx);
          },
          child: Column(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: selectedIdx == idx
                          ? Color(flavor[idx].color!)
                          : Colors.transparent,
                      width: 2),
                ),
                child: Container(
                  margin: EdgeInsets.all(6),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(flavor[idx].color!),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text(
                flavor[idx].name,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(flavor[idx].color!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productSize() {
    int selectedIdx = 0;
    double range = 80;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        size.length,
        (idx) => GestureDetector(
          onTap: () {
            setState(() => selectedIdx = idx);
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: selectedIdx == idx
                          ? Color(0xFFEB5B24)
                          : Colors.transparent,
                      width: 2),
                ),
                child: Image.asset(
                  'images/balachips_ori.png',
                  width: range -= 10,
                ),
              ),
              SizedBox(height: 12),
              Text(
                size[idx],
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<ProductFlavorRadio> flavor = [
    ProductFlavorRadio(
      name: 'original',
      color: 0xFF0FA433,
    ),
    ProductFlavorRadio(
      name: 'cheese',
      color: 0xFFF1DD27,
    ),
    ProductFlavorRadio(
      name: 'spicy',
      color: 0xFFC11924,
    ),
  ];

  List<String> size = ['S', 'M', 'L'];

  List<ProductPanels> panels = [
    ProductPanels(
      title: 'Description',
      body: Text(
        'Bisa dimakan kapanpun dan aman dikonsumsi untuk semua kalangan, tidak mengandung bahan penyedap '
        'dan pengawet, cocok untuk kalangan vegetarian karena 100% terbuat dari bahan organik.',
      ),
    ),
    ProductPanels(
      title: 'Shipping & Returns',
      body: Text(
        'ketentuan harga pengiriman sesuai dengan tipe yang dipilih. pengiriman paling lambat dikirim 1 minggu. '
        'Apabila terjadi masalah dalam pengiriman atau kurang puas dengan produk, orderan dapat dibatalkan '
        'dan tentunya uang kembali. Anda juga dapat menukar produk yang dibeli dengan produk yang lain '
        'apabila orderan belum dikirim. Untuk urgent silahkan hubungi no hp yang tertera.',
      ),
    ),
    ProductPanels(title: 'Review Product', body: ReviewProduct()),
  ];
}

class ProductFlavorRadio {
  final String name;
  final int? color;

  ProductFlavorRadio({
    required this.name,
    this.color,
  });
}

class ProductPanels {
  final String title;
  final Widget body;
  ProductPanels({required this.title, required this.body});
}
