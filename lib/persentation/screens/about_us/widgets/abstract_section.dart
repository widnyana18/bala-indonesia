import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class AbstractSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Row(
        children: [
          Spacer(),
          Flexible(
            flex: 2,
            child: Image.asset(
              'images/maggot.png',
              fit: BoxFit.contain,
              color: Color(0xFF4E4E4E).withOpacity(.2),
              colorBlendMode: BlendMode.luminosity,
            ),
          ),
          SizedBox(width: 30),
          Flexible(
            flex: 5,
            child: content(context),
          ),
        ],
      ),
      smallScreen: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              'images/maggot.png',
              fit: BoxFit.cover,
              color: Color(0xFF4E4E4E).withOpacity(.2),
              colorBlendMode: BlendMode.luminosity,
            ),
          ),
          Positioned(
            bottom: -MediaQuery.of(context).size.width * .5,
            child: content(context),
          ),
        ],
      ),
    );
  }

  Widget content(BuildContext context) => Container(
        padding: EdgeInsets.all(25),
        color: Color(0xFF222222),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Siapa Kami?', style: Theme.of(context).textTheme.headline1),
            RichText(
              text: TextSpan(
                text: 'PT Bala Biotech Indonesia',
                style: TextStyle(
                    color: Color(0xFFEB5B24), fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                      text:
                          'merupakan perusahaan yang berorietasi pada jasapengolahan limbah berteknologi '
                          'ramah lingkungan dengan menerapkan prinsip 3R yaitu: Pengurangan (reduce), Daur ulang (recycle) '
                          'dan Penggunaan kembali (reuse) sehingga limbah mempunyai nilai ekonomi dan dapat dimanfaatkan kembali.'),
                ],
              ),
            ),
          ],
        ),
      );
}
