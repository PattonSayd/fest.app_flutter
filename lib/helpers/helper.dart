import 'package:flutter/material.dart';

extension BorderContext on BuildContext {
  BoxDecoration get border => BoxDecoration(
          border: Border.all(
        color: Colors.red, // red as border color
      ));
}
