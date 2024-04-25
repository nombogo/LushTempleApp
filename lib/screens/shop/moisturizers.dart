import 'package:flutter/material.dart';

class Moisturizers extends StatefulWidget {
  const Moisturizers({super.key});

  @override
  State<Moisturizers> createState() => _MoisturizersState();
}

class _MoisturizersState extends State<Moisturizers> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(children: [Text('Moisturizers')],),),
    );
  }
}