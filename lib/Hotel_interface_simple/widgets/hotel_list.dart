// lib/widgets/hotel_list.dart
import 'package:flutter/material.dart';
import '../models/hotel.dart';
import 'hotel_card.dart';

class HotelList extends StatelessWidget {
  final List<Hotel> hotels;

  const HotelList({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          return HotelCard(hotel: hotels[index]);
        },
      ),
    );
  }
}
