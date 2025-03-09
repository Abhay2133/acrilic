import 'package:flutter/material.dart';
import 'dart:convert';

dynamic tryEncodeJson(String input) {
  try {
    return jsonDecode(input);
  } catch (e) {
    return input; // Return original string if decoding fails
  }
}

Color hexToColor(String hexString) {
  hexString = hexString.toUpperCase().replaceAll("#", "");
  if (hexString.length == 6) {
    hexString = "FF$hexString"; // Add alpha value (FF for full opacity)
  }
  return Color(int.parse(hexString, radix: 16));
}