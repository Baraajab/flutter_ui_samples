// lib/widgets/filter_section.dart
import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  final int hotelsCount;

  const FilterSection({super.key, required this.hotelsCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, right: 13, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$hotelsCount hotels found',
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Reborn',
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              const Text(
                'Filters',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Reborn',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.sort, size: 30),
                color: const Color(0xFF56D4C5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
