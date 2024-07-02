import 'package:flutter/material.dart';

class ProductItemTile extends StatefulWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final String productPrice;
  final Color color;

  const ProductItemTile({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.productPrice,
    required this.color,
  }) : super(key: key);

  String get _productName => productName;
  String get _productImage => productImage;
  String get _productDescription => productDescription;
  String get _productPrice => productPrice;
  Color get _color => color;

  @override
  State<ProductItemTile> createState() => _ProductItemTileState();
}

class _ProductItemTileState extends State<ProductItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: widget.color), // Use widget.color instead of color directly
      child: Column(
        children: [
          Image.asset(widget.productImage),
          Text(widget.productName),
          Text(widget.productDescription),
          Text(widget.productPrice),
          Text(widget.color.toString()),
          MaterialButton(
            onPressed: () {},
            color: widget.color, // Use widget.color instead of color directly
            child: Text(
              widget.productPrice, // Display productPrice instead of itemPrice
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
