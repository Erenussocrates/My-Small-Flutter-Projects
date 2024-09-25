import 'package:flutter/material.dart';
import "dart:math";

final randomizer =
    Random(); //it can even be right below the imports so that it gets created only once

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      //and putting randomizer instead
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ), // Image.asset
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const Text("Roll the dice"),
        ), // TextButton
      ],
    ); // Column
  }
}
