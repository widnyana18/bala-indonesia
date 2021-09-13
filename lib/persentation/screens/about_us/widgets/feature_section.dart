import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeatureSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Mengapa ',
              style: txtTheme.headline1?.copyWith(color: Color(0xFFEB5B24)),
              children: [
                TextSpan(
                  text: 'Membeli Produk Kami ?',
                  style: txtTheme.headline1,
                ),
              ],
            ),
          ),
          SizedBox(height: 45),
          ResponsiveLayout(
            largeScreen: Wrap(
              spacing: 40,
              runSpacing: 40,
              children: listTile
                  .map((item) =>
                      Container(width: 360, child: featureTile(item, txtTheme)))
                  .toList(),
            ),
            smallScreen: Column(
              children: [
                PageView.builder(
                  itemCount: 2,
                  itemBuilder: (ctx, idx) {
                    final bucket1 = listTile..removeRange(4, listTile.length);
                    final bucket2 = listTile..removeRange(0, 4);

                    if (idx == 0)
                      return Column(
                        children: bucket1
                            .map(
                              (item) => Padding(
                                padding: EdgeInsets.only(bottom: 40),
                                child: featureTile(item, txtTheme),
                              ),
                            )
                            .toList(),
                      );

                    return Column(
                      children: bucket2
                          .map(
                            (item) => Padding(
                              padding: EdgeInsets.only(bottom: 40),
                              child: featureTile(item, txtTheme),
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
                SmoothPageIndicator(
                  controller: PageController(),
                  count: 2,
                  effect: ExpandingDotsEffect(
                    dotColor: Color(0xFF4B4B4B).withOpacity(.5),
                    activeDotColor: Color(0xFF4B4B4B),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget featureTile(ProductTile item, TextTheme txtTheme) => Row(
        children: [
          Icon(item.icon, size: 50),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title!, style: txtTheme.headline6),
              SizedBox(width: 15),
              Text(item.desc!),
            ],
          ),
        ],
      );

  List<ProductTile> listTile = [
    ProductTile(
      icon: FontAwesomeIcons.coins,
      title: 'Harga terjangkau',
      desc: 'Harga murah dan produk lebih tahan lama',
    ),
    ProductTile(
      icon: FontAwesomeIcons.leaf,
      title: '100%  Organik (Maggot BSF)',
      desc: 'Bahan terbuat dari Maggot BSF yang dikeringkan 100% organik tanpa '
          'bahan kimia dan sudah teruji di Lab Universitas Udayana',
    ),
    ProductTile(
      icon: Icons.category_outlined,
      title: 'Jenis produk bervariasi',
      desc: 'Produk tidak hanya diperuntukan untuk hewan dan tanaman, '
          'namun makanan untuk manusia pun tersedia berupa snack',
    ),
    ProductTile(
      icon: Icons.bolt_outlined,
      title: 'Pakan Bernutrisi',
      desc:
          'Kaya akan protein yang dibutuhkan  lebih dari 50% oleh tubuh mahluk hidup',
    ),
    ProductTile(
      icon: Icons.spa_outlined,
      title: 'Produk ramah lingkungan',
      desc:
          'Dikarenakan menggunakan bahan organik yang mudah diurai dan dapat didaur ulang',
    ),
    ProductTile(
      icon: FontAwesomeIcons.tachometerAlt,
      title: 'Mempercepat pertumbuhan Tanaman',
      desc:
          'Memiliki nutrisi yang tinggi dan melimpah, lebih praktis dan murah  dibanding menggunakan kompos kotoran',
    ),
    ProductTile(
      icon: FontAwesomeIcons.heartbeat,
      title: 'Menjaga Kesehatan Hewan',
      desc:
          'Anti stress, anti mikroba, dan tidak merusak lingkungan mudah larut daman air. mencerahkan warna ikan, '
          'menigkatkan imun dan keaktifan, cocok untuk ikan hias, meningkatkan kicau burung',
    ),
    ProductTile(
      icon: FontAwesomeIcons.lungs,
      title: 'Aman Dikonsumsi',
      desc:
          'Berbahan organik tanpa penyedap dan pengawet, sudah diuji maka daoat untuk '
          'orang dari semua kalangan pengganti gandum, cocok untuk vegetarian pengganti daging',
    ),
  ];
}

class ProductTile {
  ProductTile({this.icon, this.title, this.desc});

  final IconData? icon;
  final String? title;
  final String? desc;
}
