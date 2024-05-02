import 'package:flutter/material.dart';

class GoddessButter extends StatefulWidget {
  const GoddessButter({super.key});

  @override
  State<GoddessButter> createState() => _GoddessButterState();
}

class _GoddessButterState extends State<GoddessButter> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Goddess Butter'),
      ),
    );
  }
}