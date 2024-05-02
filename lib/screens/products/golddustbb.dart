import 'package:flutter/material.dart';

class GoldDust extends StatefulWidget {
  const GoldDust({super.key});

  @override
  State<GoldDust> createState() => _GoldDustState();
}

class _GoldDustState extends State<GoldDust> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Gold Dust"),
      ),
    );
  }
}