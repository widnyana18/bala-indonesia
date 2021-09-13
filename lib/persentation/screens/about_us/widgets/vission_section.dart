import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class VissionSection extends StatefulWidget {
  @override
  _VissionSectionState createState() => _VissionSectionState();
}

class _VissionSectionState extends State<VissionSection> {
  late TextTheme theme;
  @override
  void initState() {
    super.initState();
    theme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ResponsiveLayout(
        smallScreen: Column(
          children: [
            imgDecor(),
            SizedBox(height: 12),
            vission,
            SizedBox(height: 12),
            imgDecor(),
            SizedBox(height: 12),
            mission,
          ],
        ),
        largeScreen: Card(
          color: Color(0xFF2F2F2F).withOpacity(.4),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(flex: 3, child: vission),
                    SizedBox(width: 20),
                    Flexible(child: imgDecor()),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(child: imgDecor()),
                    SizedBox(width: 20),
                    Flexible(flex: 3, child: mission),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imgDecor() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(
          'images/beach.jpg',
          color: Color(0xFF4E4E4E).withOpacity(.2),
          colorBlendMode: BlendMode.luminosity,
          fit: BoxFit.cover,
        ),
      );

  Widget get vission => Card(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'V',
                  style: TextStyle(
                    color: Color(0xFFEB5B24),
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                  children: [
                    TextSpan(text: 'ission', style: theme.headline1),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                  'Menjadi perusahaan pengolahan limbah dengan pemanfaatan teknologi ramah lingkangan berkelanjutan, '
                  'melalui system terintegrasi teknologi inovatif dengan Reduce, Reuse dan Recycle sebagai prinsip dalam pengelolaannnya.'),
            ],
          ),
        ),
      );

  Widget get mission => Card(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'M',
                  style: TextStyle(
                    color: Color(0xFFEB5B24),
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                  children: [
                    TextSpan(text: 'ission', style: theme.headline1),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('icon/ul.png', width: 16),
                  SizedBox(width: 24),
                  Text(
                      'Menjadi mitra mengelola limbah bagi pemerintah, swasta, dan '
                      'masyarakat dengan teknologi ramah lingkungan'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset('icon/ul.png', width: 16),
                  SizedBox(width: 24),
                  Text(
                      'Penyedia layanan pengelola limbah untuk memastikan lingkungan '
                      'aman dan sehat bagi generasi sekarang dan generasi masa depan'),
                ],
              ),
            ],
          ),
        ),
      );
}
