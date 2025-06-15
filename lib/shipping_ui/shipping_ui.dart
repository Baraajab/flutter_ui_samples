import 'package:flutter/material.dart';
import 'package:package_ui/screens/shipping_record_screen.dart';

void main() {
  runApp(ShippingApp());
}

class ShippingApp extends StatelessWidget {
  const ShippingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ShippingRecordScreen());
  }
}
