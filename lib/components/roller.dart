import 'package:flutter/material.dart';
import 'dart:math';

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  var currentRoll = 1;
  double turns = 0;

  void rollDice() {
    setState(() {
      turns += 3; // Spin 3 times
      currentRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedRotation(
          turns: turns,
          duration: const Duration(milliseconds: 600),
          child: Image.asset(
            'images/dice$currentRoll.png',
            width: 200,
          ),
        ),
        const SizedBox(height: 30),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 28),
            foregroundColor: Colors.white,
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}