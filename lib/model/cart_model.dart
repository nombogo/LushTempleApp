import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  
  // list of products on sale
  final List _shopProducts = [
    // [productName, productImage, productDescription, productPrice, color]
    [
      "O Divine Fruit Tree Lotion",
      "assets/ofruittreelotion.png",
      "Refreshing lotion with that divine fruity essence",
      "1,500",
      Color.fromARGB(255, 255, 223, 171)
    ],
    [
      "O Divine Fruit Tree Scrub",
      "aassets/ofruittreescrub.png",
      "Exfoiliating scrub with that divine fruity essence",
      "1,200",
      Color.fromARGB(255, 255, 223, 171)
    ],
  ];

  get shopProducts => _shopProducts;
}
