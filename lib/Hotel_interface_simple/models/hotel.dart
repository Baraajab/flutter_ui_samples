class Hotel {
  final String name;
  final String location;
  final String distanceToCity;
  final int price;
  final int rating;
  final int reviews;
  final String imageUrl;

  Hotel({
    required this.name,
    required this.location,
    required this.distanceToCity,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
  });

  static List<Hotel> getSampleHotels() {
    return [
      Hotel(
        name: 'Grand Royal Hotel',
        location: 'wembley, London',
        distanceToCity: '2 km to city',
        price: 180,
        rating: 4,
        reviews: 80,
        imageUrl: 'assets/hotel/hotel_1.png',
      ),
      Hotel(
        name: 'Queen hotel',
        location: 'wembley, London',
        distanceToCity: '2 km to city',
        price: 220,
        rating: 4,
        reviews: 80,
        imageUrl: 'assets/hotel/hotel_2.png',
      ),
      Hotel(
        name: 'Resort Hotel ',
        location: 'French Polynesia',
        distanceToCity: '8 km to Vaitape',
        price: 1500,
        rating: 4,
        reviews: 1200,
        imageUrl: 'assets/hotel/hotel_3.png',
      ),
      Hotel(
        name: 'Dolce Golden Hotel',
        location: 'Hanoi, Vietnam',
        distanceToCity: 'Located city center',
        price: 350,
        rating: 4,
        reviews: 900,
        imageUrl: 'assets/hotel/hotel_4.png',
      ),
      Hotel(
        name: 'Hard Rock Hotel',
        location: 'Batu Ferringhi ',
        distanceToCity: '15km to George Town',
        price: 200,
        rating: 3,
        reviews: 2500,
        imageUrl: 'assets/hotel/hotel_5.png',
      ),
    ];
  }
}
