import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDice = 'assets/images/dice-1.png';
  Color backgroundColor = Colors.black;

  void rollDice() {
    setState(() {
      backgroundColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
      final random = Random();
      final diceNumber = random.nextInt(6) + 1;
      activeDice = 'assets/images/dice-$diceNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(
                activeDice,
              ),
              width: 200.0,
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.all(24.0),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
        )
      ],
    );
  }
}
