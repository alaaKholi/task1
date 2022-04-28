import 'package:flutter/material.dart';

import 'colors_helper.dart';

TextStyle heavyAvenirTextStyle(
    {double size = 14, Color color = ColorsHelper.main_color_392C23}) {
  return TextStyle(
    color: color,
    fontSize: size,
    fontFamily: 'AvenirArabicHeavy',
  );
}

TextStyle mediumAvenirTextStyle(
    {double size = 14, Color color = ColorsHelper.main_color_392C23}) {
  return TextStyle(
    color: color,
    fontSize: size,
    fontFamily: 'AvenirArabicMedium',
  );
}
