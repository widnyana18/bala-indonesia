import 'package:bala_indonesia/persentation/screens/screens.dart';
import 'package:bala_indonesia/persentation/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bala Indonesia',
      debugShowCheckedModeBanner: false,
      darkTheme: appTheme(),
      themeMode: ThemeMode.dark,
      onGenerateTitle: (ctx) => '',
      home: CatalogPage(),
    );
  }
}
