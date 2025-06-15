// lib/widgets/hotel_card.dart
import 'package:flutter/material.dart';
import '../models/hotel.dart';

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 12, right: 8, left: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 7),
              blurRadius: 5,
              color: const Color.fromARGB(101, 161, 161, 161),
            ),
          ],
        ),
        height: 300,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage(hotel.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              hotel.name,
                              style: const TextStyle(
                                fontSize: 22,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "\$${hotel.price}",
                              style: const TextStyle(
                                fontSize: 22,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '${hotel.location}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Reborn',
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF56D4C5),
                              size: 20,
                            ),
                            Text(
                              hotel.distanceToCity,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Reborn',
                                color: Colors.black54,
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              "/per night",
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Reborn',
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              hotel.rating >= 1
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Color(0xFF56D4C5),
                            ),
                            Icon(
                              hotel.rating >= 2
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Color(0xFF56D4C5),
                            ),
                            Icon(
                              hotel.rating >= 3
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Color(0xFF56D4C5),
                            ),
                            Icon(
                              hotel.rating >= 4
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Color(0xFF56D4C5),
                            ),
                            Icon(
                              hotel.rating == 5
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Color(0xFF56D4C5),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '${hotel.reviews} Reviews',
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Reborn',
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(top: 15, right: 15, child: FavoriteButton()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Color(0xFF56D4C5),
        ),
      ),
    );
  }
}
