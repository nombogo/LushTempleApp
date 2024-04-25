import 'package:flutter/material.dart';

class Fragrance extends StatefulWidget {
  const Fragrance({super.key});

  @override
  State<Fragrance> createState() => _FragranceState();
}

class _FragranceState extends State<Fragrance> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(children: [Text('fragrance')],),),
    );
  }
}