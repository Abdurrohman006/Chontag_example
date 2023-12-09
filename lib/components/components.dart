import 'package:flutter/material.dart';

Color kMainColor = const Color(0xFF58C356);
Color kBorderColor = const Color(0xFFE2E8F0);

TextStyle kButtonText = const TextStyle(fontSize: 18, color: Colors.white);

OutlineInputBorder kOutlineBorder = OutlineInputBorder(
  borderSide: BorderSide(color: kBorderColor, width: 1.0),
  borderRadius: BorderRadius.circular(10),
);
OutlineInputBorder kOutlineFocusBorder = OutlineInputBorder(
  borderSide: BorderSide(color: kMainColor, width: 1.5),
  borderRadius: BorderRadius.circular(10),
);

OutlineInputBorder kErrorOutlineFocusBorder = OutlineInputBorder(
  borderSide: const BorderSide(color: Color(0xFFEF4444), width: 1.5),
  borderRadius: BorderRadius.circular(10),
);
