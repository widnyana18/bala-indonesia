import 'package:bala_indonesia/persentation/components/messages/message_screen.dart';
import 'package:flutter/material.dart';

class FaqDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return MessageScreen(
      content: [
        Text(
          'FAQ',
          style: txtTheme.headline1,
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Q',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xFFEB5B24)),
            ),
            SizedBox(width: 30),
            Text(
              'Bedanya apa sama pakan lain bosku?',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xFFEB5B24)),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Q',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xFFEB5B24)),
            ),
            SizedBox(width: 30),
            Text(
              'Bedanya apa sama pakan lain bosku?',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xFFEB5B24)),
            ),
          ],
        ),
        SizedBox(height: 22),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'A',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xFFEB5B24)),
            ),
            SizedBox(width: 30),
            Text(
              'Memang banyak jenis pakan yang ada, Namun kenapa harus Maggot BSF? Diantara banyaknya pakan Maggot BSF lah '
              'yang menjadi juara dalam kandungan protein jika dibandingkan dengan Jangkrik, Ulat Hongkong, Kroto, Jentik-Jentik, '
              'Kutu Air, dll. Selain itu pemerintah sendiri merekomendasikan Maggot BSF sebagai Pakan Alternatif karena dapat '
              'membantu Mengolah sampah organik lebih bijak karena bahan baku utama dari Budidaya Maggot BSF adalah '
              'Sampah Organik 🌿, maka selain mendapatkan Pakan bernutrisi Pembudidaya akan mendapatkan pupuk kompos '
              'dari hasil dekomposisi Maggot BSF ✨ Mari mulai menggunakan Pakan Organik, Batasi penggunaan pakan impor dan pabrikan 🌿',
            ),
          ],
        ),
      ],
    );
  }
}
