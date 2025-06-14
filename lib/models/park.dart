class Park {
  final String title;
  final String image;
  final String distance;
  final String price;
  final ParkType? type;
  final String? typeText;
  final double? ratingStar;
  final double? ratingCount;

  Park({
    required this.title,
    required this.image,
    required this.distance,
    required this.price,
    this.type,
    this.typeText,
    this.ratingStar,
    this.ratingCount,
  });
}

enum ParkType {
  discount,
  popular,
}

var parks = [
  Park(
    title: "Zee Park",
    image: "assets/images/park_1.png",
    distance: "2.5 km",
    price: "\$10.00/hr",
    type: ParkType.discount,
    typeText: "Off 55%",
  ),
  Park(
    title: "City Center Parking",
    image: "assets/images/park_2.png",
    distance: "1.2 km",
    price: "\$15.00/hr",
    type: ParkType.popular,
    typeText: "Popular",
  ),
  Park(
    title: "Downtown Garage",
    image: "assets/images/park_3.png",
    distance: "3.0 km/hr",
    price: "\$12.00",
  ),
];

var freshLot = [
  Park(
    title: "Senayan",
    image: "assets/images/senayan.png",
    distance: "3.0 km/hr",
    price: "\$12.00",
    ratingStar: 4.0,
    ratingCount: 13435,
  ),
  Park(
    title: "Kota Baru",
    image: "assets/images/kota_baru.png",
    distance: "6.0 km/hr",
    price: "\$10.00",
    ratingStar: 5.0,
    ratingCount: 1435,
  ),
  Park(
    title: "Senayan 2",
    image: "assets/images/senayan2.png",
    distance: "9.0 km/hr",
    price: "\$15.00",
    ratingStar: 5.0,
    ratingCount: 100435,
  ),
];
