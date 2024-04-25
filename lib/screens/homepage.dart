import 'package:flutter/material.dart';
import 'package:lush_temple_app/screens/shop/bathshower.dart';
import 'package:lush_temple_app/screens/shop/candles.dart';
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
      appBar: AppBar(
        title: Text('Lush Temple'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 225, 223, 171),
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
                    MaterialPageRoute(builder: (BuildContext context) => BathShower()),
                  ),
                ),
                ListTile(
                  title: Text('Moisturizers'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => Moisturizers()),
                  ),
                ),
                ListTile(
                  title: Text('Fragrance'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => Fragrance()),
                  ),
                ),
                ListTile(
                  title: Text('Candles'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => Candles()),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Our Story'),
            ),
            ListTile(
              title: Text('FAQ Contact Us'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('homepage'),
            ),
          ],
        ),
      ),
    );
  }
}
