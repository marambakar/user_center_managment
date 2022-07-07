import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can't instantiate this class
  static const Color primaryColor = Color.fromRGBO(239,236,243,1);
  static const Color lightGreen = Color.fromRGBO (10,229,213,1);
  static const secondaryColor = Color(0xff92b2fc);

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color darkBlue = Color.fromRGBO(27, 81, 128, 1);
  static const Color transparent = Colors.transparent;
  static const Color blue = Colors.blue;
  static const Color grey = Colors.grey;
  static const Color green = Colors.green;
  static const Color indigo = Colors.indigo;
  static const Color deepOrange = Colors.deepOrangeAccent;

  static const Color lightGrey = Color(0xffDFD9D9);
  static const Color darkGrey = Color(0xff857F82);
  static const Color selectedFarm = Color.fromRGBO(0, 0, 61, 1);
  static const Color scaffoldBGColor = Color(0xffF0f0f0);
  static const Color bascetBorder = Color.fromRGBO(204, 204, 216, 1);
  static const Color grayLabel = Color.fromRGBO(160, 160, 160, 1);
  static const Color grayBox = Color.fromRGBO(197, 197, 197, 1);
  static const Color grayText = Color.fromRGBO(132, 132, 132, 1);

  static const Color homeColor = Color.fromARGB(246,248,251,255);
  static const Color unSelectedTab = Color.fromRGBO(77, 77, 119, 1);
  static const Color gridRow = Color.fromRGBO(0, 0, 61, 1);
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}