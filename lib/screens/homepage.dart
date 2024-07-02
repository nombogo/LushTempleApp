import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CartModel>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(115, 63, 0, .55),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => FAQContact(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Profile(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => CheckOut(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
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
              title: Text('Body Care'),
              childrenPadding: EdgeInsets.only(left: 16),
              children: [
                ListTile(
                  title: Text('Bath & Shower'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => BathShower(),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Moisturizers'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Moisturizers(),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Fragrance'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Fragrance(),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Candles'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Candles(),
                    ),
                  ),
                ), // Add similar list tiles for other categories
              ],
            ),
            ListTile(
              title: Text('Our Story'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => OurStory(),
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
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset('assets/IMG_0086.jpg'),
              ),
              SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                            padding: EdgeInsets.all(0),
                            child: Text(
                              product.price,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Text(
                              product.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Add space between GridView and Divider
              Divider(
                color: Color.fromRGBO(115, 63, 0, .55),
                thickness: 2,
                height: 40, // Adjust height to match spacing
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(
                  height: 10), // Add space between Divider and next element
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Image.asset('assets/rosestar.png'),
              ),
              SizedBox(
                  height: 20), // Add space between Divider and next element
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.0),
                child: Image.asset('assets/mybody.jpg'),
              ),
              SizedBox(height: 20), // Add space between images
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 88.0),
                child: Image.asset('assets/IMG_0088.jpg'),
              ),
              SizedBox(height: 20), // Add space between images
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Image.asset('assets/temple.jpg'),
              ),
              SizedBox(height: 40), // Add space between images
              Padding(
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
              SizedBox(height: 20), // Add space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
