import 'package:flutter/material.dart';

class GrapvineGossip extends StatefulWidget {
  const GrapvineGossip({super.key});

  @override
  State<GrapvineGossip> createState() => _GrapvineGossipState();
}

class _GrapvineGossipState extends State<GrapvineGossip> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Grapvine Gossip"),
      ),
    );
  }
}