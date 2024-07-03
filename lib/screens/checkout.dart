import 'package:flutter/material.dart';
import 'package:lush_temple_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final cartModel = Provider.of<CartModel>(context);

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
        elevation: 0, // Remove the shadow
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Items in Cart:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: cartModel.cartItems.length,
                itemBuilder: (context, index) {
                  final product = cartModel.cartItems[index];
                  return ListTile(
                    leading: Image.asset(
                      product.image,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(product.name),
                    subtitle: Text(product.description),
                    trailing: Text(product.price),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Total: \$${cartModel.calculateTotal()}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement checkout logic here
              },
              child: const Text("Checkout"),
            ),
          ],
        ),
      ),
    );
  }
}
