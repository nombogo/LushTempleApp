import 'package:flutter/material.dart';

class CrystalCandle extends StatefulWidget {
  const CrystalCandle({super.key});

  @override
  State<CrystalCandle> createState() => _CrystalCandleState();
}

class _CrystalCandleState extends State<CrystalCandle> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Crystal Candle'),
      ),
    );
  }
}