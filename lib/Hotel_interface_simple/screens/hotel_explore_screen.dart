import 'package:flutter/material.dart';
import '../models/hotel.dart';
import '../widgets/search_bar.dart';
import '../widgets/filter_section.dart';
import '../widgets/hotel_list.dart';

class HotelExploreScreen extends StatelessWidget {
  const HotelExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hotels = Hotel.getSampleHotels();

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "Explore",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, size: 30),
          ),
          const SizedBox(width: 2),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_on, size: 30),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const HotelSearchBar(),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Choose date',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '12 Dec - 22 Dec',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 35),
                SizedBox(height: 50, child: VerticalDivider()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Number of Rooms',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '1 Room - 2 Adults',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 35),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  FilterSection(hotelsCount: 530),
                  Expanded(child: HotelList(hotels: hotels)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
