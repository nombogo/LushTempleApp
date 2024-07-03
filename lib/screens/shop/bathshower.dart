import 'package:flutter/material.dart';
import 'package:lush_temple_app/model/cart_model.dart';
import 'package:lush_temple_app/screens/accounts/profile.dart';
import 'package:lush_temple_app/screens/checkout.dart';
import 'package:lush_temple_app/screens/inquires/faq.dart';
import 'package:lush_temple_app/screens/productDetailspage.dart';
import 'package:provider/provider.dart';

class BathShower extends StatefulWidget {
  const BathShower({super.key});

  @override
  State<BathShower> createState() => _BathShowerState();
}

class _BathShowerState extends State<BathShower> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CartModel>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
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
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Bath & Shower',
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
                itemCount: productProvider.bathshowerProducts.length,
                itemBuilder: (context, index) {
                  final product = productProvider.bathshowerProducts[index];
                  return GestureDetector(
                    onTap: () {
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
                      );
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
