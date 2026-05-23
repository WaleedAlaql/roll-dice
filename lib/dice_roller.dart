import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceNumber = 1;

  void rollDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNumber.png',
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.black),
            textStyle: WidgetStatePropertyAll(
              TextStyle(fontSize: 20),
            ),
          ),
          child: Text('Roll The Dice'),
        ),
      ],
    );
  }
}
