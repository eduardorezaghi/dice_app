import 'dart:math';
import 'package:flutter/material.dart';

final _random = Random();


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

/// State class for the DiceRoller widget
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    // Update the state of the widget to reflect the new dice image
    setState(() {
      // Generate a random number between 1 and 6
      currentDiceRoll = _random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 32),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(3, 27, 75, 0.494),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
