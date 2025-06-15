import 'package:flutter/material.dart';

Widget buildChip(String label, Color bgColor, Color textColor) {
  return Container(
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(24),
      border: Border.all(color: Colors.black12),
    ),
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    child: Text(label, style: TextStyle(color: textColor)),
  );
}
