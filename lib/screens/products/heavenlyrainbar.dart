import 'package:flutter/material.dart';

class HeveanlyRain extends StatefulWidget {
  const HeveanlyRain({super.key});

  @override
  State<HeveanlyRain> createState() => _HeveanlyRainState();
}

class _HeveanlyRainState extends State<HeveanlyRain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Heveanly Rain"),
      ),
    );
  }
}