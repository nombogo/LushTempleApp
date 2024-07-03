import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final String productPrice;

  const ProductDetailPage({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(productImage),
            const SizedBox(height: 20),
            Text(
              productName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              productDescription,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              productPrice, // Adjust the currency symbol as needed
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cartItems().addToCart();
               
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Added to cart'),
                ));
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
  
  cartItems() {}
}
