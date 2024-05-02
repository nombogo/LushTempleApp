import 'package:flutter/material.dart';
import 'package:lush_temple_app/model/cart_model.dart';
import 'package:lush_temple_app/screens/products/grapevine.dart';
import 'package:lush_temple_app/screens/products/serenesister.dart';
import 'package:lush_temple_app/screens/products/sunpeace.dart';
import 'package:lush_temple_app/screens/products/templetranquil.dart';
import 'package:provider/provider.dart';

class Fragrance extends StatefulWidget {
  const Fragrance({super.key});

  @override
  State<Fragrance> createState() => _FragranceState();
}

class _FragranceState extends State<Fragrance> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CartModel>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             const SizedBox(height: 40),
              Center(
                child: Text(
                  'Candles',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => SereneSister()),
                        );
                      }
                      if (index == 1) {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (BuildContext context) => SunPeace())
                          );
                      }
                       if (index == 2) {
                        Navigator.push(
                          context,
                           MaterialPageRoute(builder: (BuildContext context) => TempleTranquil())
                           );
                       } 
                       if (index == 3) {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GrapvineGossip())
                        );
                       }// Add more conditions for other items
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
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.name,
                              style: TextStyle(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 223, 171),
        appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
      ),
      body: Center(child: Column(children: [Text('fragrance')],),),
    );
  }
