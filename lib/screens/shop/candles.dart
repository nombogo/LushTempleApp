import 'package:flutter/material.dart';
import 'package:lush_temple_app/model/cart_model.dart';
import 'package:lush_temple_app/screens/accounts/profile.dart';
import 'package:lush_temple_app/screens/checkout.dart';
import 'package:lush_temple_app/screens/inquires/faq.dart';
import 'package:lush_temple_app/screens/productDetailspage.dart';
import 'package:provider/provider.dart';

class Candles extends StatefulWidget {
  const Candles({super.key});

  @override
  State<Candles> createState() => _CandlesState();
}

class _CandlesState extends State<Candles> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CartModel>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0,
         actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.phone),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const FAQContact(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Profile(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const CheckOut(),
                ),
              );
            },
          ),
        ], // Remove the shadow
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Candles',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: productProvider.candleProducts.length,
                itemBuilder: (context, index) {
                  final product = productProvider.candleProducts[index];
                  return GestureDetector(
                    onTap: () {
                      // Navigate to different pages based on the item
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productName: product.name,
                            productImage: product.image,
                            productDescription: product.description,
                            productPrice: product.price,
                          ),
                        ),
                      );// Add more conditions for other items
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.asset(
                              product.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                                Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        product.price,
                        textAlign: TextAlign.center,
                      ),
                      ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
