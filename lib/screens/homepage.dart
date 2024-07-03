import 'package:flutter/material.dart';
import 'package:lush_temple_app/screens/accounts/profile.dart';
import 'package:lush_temple_app/screens/inquires/faq.dart';
import 'package:lush_temple_app/screens/ourstory.dart';
import 'package:lush_temple_app/screens/productDetailspage.dart';
import 'package:lush_temple_app/screens/shop/bathshower.dart';
import 'package:lush_temple_app/screens/shop/candles.dart';
import 'package:lush_temple_app/screens/checkout.dart';
import 'package:lush_temple_app/screens/shop/fragrance.dart';
import 'package:lush_temple_app/screens/shop/moisturizers.dart';
import 'package:lush_temple_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CartModel>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(115, 63, 0, .55),
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
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(115, 63, 0, .55),
              ),
              child: Text(
                'Lush Temple',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ExpansionTile(
              title: const Text('Body Care'),
              childrenPadding: const EdgeInsets.only(left: 16),
              children: [
                ListTile(
                  title: const Text('Bath & Shower'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const BathShower(),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Moisturizers'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Moisturizers(),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Fragrance'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Fragrance(),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Candles'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Candles(),
                    ),
                  ),
                ), // Add similar list tiles for other categories
              ],
            ),
            ListTile(
              title: const Text('Our Story'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const OurStory(),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset('assets/IMG_0086.jpg'),
              ),
              const SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                  crossAxisSpacing: 10.0, // Adjust spacing between grid items
                  mainAxisSpacing: 16.0, // Adjust spacing between rows
                ),
                itemCount: productProvider.shopProducts.length,
                itemBuilder: (context, index) {
                  final product = productProvider.shopProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AspectRatio(
                            aspectRatio:
                                1, // Adjust the aspect ratio as needed
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
                            padding: const EdgeInsets.all(0),
                            child: Text(
                              product.name,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20), // Add space between GridView and Divider
              const Divider(
                color: Color.fromRGBO(115, 63, 0, .55),
                thickness: 2,
                height: 40, // Adjust height to match spacing
                indent: 40,
                endIndent: 40,
              ),
              const SizedBox(
                  height: 10), // Add space between Divider and next element
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Image.asset('assets/rosestar.png'),
              ),
              const SizedBox(
                  height: 20), // Add space between Divider and next element
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Image.asset('assets/mybody.jpg'),
              ),
              const SizedBox(height: 20), // Add space between images
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 88.0),
                child: Image.asset('assets/IMG_0088.jpg'),
              ),
              const SizedBox(height: 20), // Add space between images
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Image.asset('assets/temple.jpg'),
              ),
              const SizedBox(height: 40), // Add space between images
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 39.0),
                child: Text(
                  '© Copyright Lush Temple Co.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
