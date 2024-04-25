import 'package:flutter/material.dart';

class BathShower extends StatefulWidget {
  const BathShower({super.key});

  @override
  State<BathShower> createState() => _BathShowerState();
}

class _BathShowerState extends State<BathShower> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(children: [Text('Bath & Shower')],),),
    );
  }
}