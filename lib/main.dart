import 'package:flutter/material.dart';
import 'package:steg/text_encode.dart';
import 'home_page.dart';
import 'package:steg/text_decode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: homePage(),
      routes: {
        '/home': (context) => homePage(),
        '/encode': (context) => textEncode(),
        '/decode': (context) => textDecode(),
      },
    );
  }
}
