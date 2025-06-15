import 'package:flutter/material.dart';
import 'screens/hotel_explore_screen.dart';

class Hotel_ui extends StatelessWidget {
  const Hotel_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hotel Booking App',
      home: HotelExploreScreen(),
    );
  }
}
