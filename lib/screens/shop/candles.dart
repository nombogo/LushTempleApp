import 'package:flutter/material.dart';

class Candles extends StatefulWidget {
  const Candles({super.key});

  @override
  State<Candles> createState() => _CandlesState();
}

class _CandlesState extends State<Candles> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(children: [Text('Candles')],),),
    );
  }
}