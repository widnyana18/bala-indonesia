import 'dart:ui';

import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Padding(
        padding: EdgeInsets.all(25),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'images/bsf.png',
              fit: BoxFit.cover,
              color: Color(0xFF4E4E4E).withOpacity(.5),
              colorBlendMode: BlendMode.luminosity,
            ),
            Row(
              children: [
                Spacer(),
                Flexible(flex: 4, child: header(context)),
                SizedBox(width: 20),
                Flexible(flex: 3, child: content()),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
      smallScreen: Stack(
        alignment: Alignment.topCenter,
        children: [
          Transform.rotate(
            angle: 90,
            child: Image.asset(
              'images/bsf.png',
              fit: BoxFit.cover,
              color: Color(0xFF4E4E4E).withOpacity(.5),
              colorBlendMode: BlendMode.luminosity,
            ),
          ),
          Column(
            children: [
              header(context),
              SizedBox(height: 20),
              content(),
            ],
          ),
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Container(
      alignment: Alignment(0, .8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/bg2.png'), fit: BoxFit.contain),
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Apa Itu ',
          style: txtTheme.headline1,
          children: [
            TextSpan(
              text: 'BSF',
              style: txtTheme.headline1?.copyWith(color: Color(0xFFF9A51A)),
            ),
            TextSpan(
              text: ' ?',
              style: txtTheme.headline1,
            ),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Column(
      children: List.generate(
        2,
        (idx) => Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(35),
                  child: idx == 0
                      ? RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Larva Black Soldier Fly ',
                            style: TextStyle(color: Color(0xFFEB5B24)),
                            children: [
                              TextSpan(
                                text:
                                    'dapat ditemukan hampir diseluruh area subtropis dan tropis di dunia (termasuk Indonesia). '
                                    'BSFL dapat memakan berbagai macam bahan organik dalam skala besar dan mengkonversi '
                                    'bahan organik limbah tersebut menjadi biomassa larva yang kaya akan nutrisi.',
                              ),
                            ],
                          ),
                        )
                      : Text(
                          'Ketika BSFL bertraformasi menjadi lalat, ia tidak memerlukan sumber makanan '
                          'dan bergantung pada energi yang telah tersimpan pada fase larva. Pemanenan larva '
                          'dilakukan tepat sebelum memasuki fase pupa, untuk mendapt jumlah nutrisi tertinggi.',
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
