import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final String description;
  final String price;
  final Color color;

  Product({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.color,
  });
}

class CartModel extends ChangeNotifier {
  final List<Product> _shopProducts = [
    Product(
      name: "O Divine Fruit Tree Lotion",
      image: "assets/ofruittreelotion.png",
      description: "Refreshing lotion with that divine fruity essence",
      price: "1,500",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "O Divine Fruit Tree Scrub",
      image: "assets/ofruittreescrub.png",
      description: "Exfoliating scrub with that divine fruity essence",
      price: "1,200",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
  ];

  final List<Product> _bathshowerProducts = [
    Product(
      name: "OatBerryHoney Glow Bar",
      image: "assets/oatberyhoney.png",
      description: "Nourishing soap bar with oats, berries, and honey",
      price: "1,000",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Sacred Skin Scrub",
      image: "assets/sacredskin.png",
      description: "Gentle exfoliating scrub for radiant skin",
      price: "1,800",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Miracle Manna Bath Bomb",
      image: "assets/miraclemanna.png",
      description: "Rejuvenating bath bomb for a magical bath",
      price: "900",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Gold Dust Bath Bomb",
      image: "assets/golddust.png",
      description: "Luxurious bath bomb with golden shimmer",
      price: "1,000",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Heavenly Rain Glow Bar",
      image: "assets/heavenlyrain.png",
      description: "Soothing soap bar with a fresh rain scent",
      price: "1,100",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Florescent Oasis Glow Bar",
      image: "assets/floraloasis.png",
      description: "Vibrant soap bar inspired by floral oasis",
      price: "1,200",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Calm Springs Bath Salts",
      image: "assets/calmsprings.png",
      description: "Tranquil bath salts for relaxation",
      price: "1,100",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Angel Cakes Bath Bomb",
      image: "assets/angelcakes.png",
      description: "Delicate bath bomb with heavenly scents",
      price: "800",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "True Romance Bath Salts",
      image: "assets/trueromance.png",
      description: "Romantic bath salts for a love-filled soak",
      price: "1,200",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "O Divine Fruit Tree Scrub",
      image: "assets/ofruittreescrub.png",
      description: "Exfoliating scrub with that divine fruity essence",
      price: "1,200",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
  ];
  final List<Product> _moisturizerProducts = [
    Product(
      name: "Princess of Kenya Shea Butter",
      image: "assets/princessofkenya.png",
      description: "Rich and creamy shea butter for deep hydration",
      price: "2,500",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Kings Fortune Body Butter",
      image: "assets/kingsfortune.png",
      description: "Nourishing body butter for royal skin",
      price: "2,800",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Goddess Touch Body Butter",
      image: "assets/princessofkenya.png",
      description: "Rich and creamy shea butter for deep hydration",
      price: "2,500",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "O Divine Fruit Tree Lotion",
      image: "assets/ofruittreelotion.png",
      description: "Refreshing lotion with that divine fruity essence",
      price: "1,500",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
  ];
  final List<Product> _fragranceProducts = [
    Product(
      name: "Serene Sisterhood Fragrance Oil",
      image: "assets/serenesisterhood.png",
      description: "Empowering fragrance oil for sisterhood vibes",
      price: "1,300",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Sun Peace Fragrance Oil",
      image: "assets/sunpeace.png",
      description: "Warm and sunny fragrance oil for positivity",
      price: "1,300",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Temple Tranquility Fragrance Oil",
      image: "assets/templetranquilty.png",
      description: "Calming fragrance oil for a serene ambiance",
      price: "1,300",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
     Product(
      name: "Grapevine Fragrance Oil",
      image: "assets/grapevinegossip.png",
      description: "Juicy fragrance oil for uplifting moods",
      price: "1,300",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
  ];
  final List<Product> _candleProducts = [
    Product(
      name: "Eternal Flame Candle",
      image: "assets/templetranquilty.png",
      description: "Warm and inviting candle for eternal ambiance",
      price: "2,000",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Crystal Coated Candle",
      image: "assets/templetranquilty.png",
      description: "Elegant candle with a crystal-coated finish",
      price: "2,200",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
    Product(
      name: "Shine Before Thee Candle",
      image: "assets/templetranquilty.png",
      description: "Shimmering candle to brighten your space",
      price: "1,800",
      color: Color.fromARGB(255, 255, 223, 171),
    ),
  ];
  List<Product> get shopProducts => _shopProducts;
  List<Product> get bathshowerProducts => _bathshowerProducts;
  List<Product> get moisturizerProducts => _moisturizerProducts;
  List<Product> get fragranceProducts => _fragranceProducts;
  List<Product> get candleProducts => _candleProducts;
}
