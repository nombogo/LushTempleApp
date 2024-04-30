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

  @override
  State<ProductItemTile> createState() => _ProductItemTileState();
}

class _ProductItemTileState extends State<ProductItemTile> {
  @override
  Widget build(BuildContext context) {
    
   return Container( 
      child: Column(children: [
        Image.asset(widget.productImage), // Added 'widget.' before productImage
        Text(widget.productName), // Added 'widget.' before productName
        Text(widget.productDescription), // Added 'widget.' before productDescription
        Text(widget.productPrice), // Added 'widget.' before productPrice
        Text(widget.color.toString()), // Added 'widget.' before color and converted to string
      ],)
    );
  }
}
