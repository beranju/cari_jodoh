import 'package:flutter/material.dart';

class ColorManager{
  static Color primary = HexColor.fromHex('#03091C');
  static Color secondary = HexColor.fromHex('#262F4B');
  static Color pink = HexColor.fromHex('#EA887B');
  static Color grey = HexColor.fromHex('#5B6279');
  static Color gray = HexColor.fromHex('#A9A9AC');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color cream = HexColor.fromHex('#D9D9D9');
}

/// Extension color
/// extension name is HexColor yang menempel pada kelas Color
extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    /// kita check
    if(hexColorString.length == 6){
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}