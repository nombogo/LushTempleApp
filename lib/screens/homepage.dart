import 'package:flutter/material.dart';
import 'package:lush_temple_app/components/product_item_tile.dart';
import 'package:lush_temple_app/screens/accounts/login.dart';
import 'package:lush_temple_app/screens/inquires/faqcontact.dart';
import 'package:lush_temple_app/screens/ourstory.dart';
import 'package:lush_temple_app/screens/shop/bathshower.dart';
import 'package:lush_temple_app/screens/shop/candles.dart';
import 'package:lush_temple_app/screens/shop/checkout.dart';
import 'package:lush_temple_app/screens/shop/fragrance.dart';
import 'package:lush_temple_app/screens/shop/moisturizers.dart';
import 'package:lush_temple_app/screens/shop/shop.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(115, 63, 0, .55),
        actions: <Widget>[
           GestureDetector(
            onTap: () {
              // Navigate to profile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => FAQContact()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.phone,
                color: Color.fromARGB(255, 255, 223, 171),
                size: 30, // Adjust the size as needed
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to profile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Login()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.person,
                color: Color.fromARGB(255, 255, 223, 171),
                size: 30, // Adjust the size as needed
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => CheckOut()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_bag,
                color: Color.fromARGB(255, 255, 223, 171),
                size: 30, // Adjust the size as needed
              ),
            ),
          ), // Added missing closing bracket
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(115, 63, 0, .55),
              ),
              child: ListTile(
                title: Text('Lush Temple'),
              ),
            ),
            ListTile(
              title: Text('Shop All'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Shop()),
              ),
            ),
            ExpansionTile(
              title: Text('Body Care'),
              childrenPadding: EdgeInsets.only(left: 60),
              children: [
                ListTile(
                  title: Text('Bath & Shower'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BathShower()),
                  ),
                ),
                ListTile(
                  title: Text('Moisturizers'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Moisturizers()),
                  ),
                ),
                ListTile(
                  title: Text('Fragrance'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Fragrance()),
                  ),
                ),
                ListTile(
                  title: Text('Candles'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Candles()),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Our Story'),
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (BuildContext context) => OurStory())),
            ),
      
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // Added comma here
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: 150,
                  width: 900,
                  child: Image.asset('assets/IMG_0086.jpg'),
                ),
              ),
              SizedBox(
                height: 10,  //wear I want to add the first product item
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: 500,
                  width: 900,
                  child: Image.asset('assets/mybody.jpg'),
                ),
              ),
              SizedBox(
                height: 10, //wear I want to add the second product item
                width: 20,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: 300,
                  width: 700,
                  child: Image.asset('assets/IMG_0088.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: 350,
                  width: 900,
                  child: Image.asset('assets/temple.jpg'),
                ),
              ),
              Column
              (children: [Text('© Copyright Lush Temple Co.')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
