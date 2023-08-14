import 'package:flutter/material.dart';

import 'dart:math';

import 'styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;

  void rollDice(){
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/dice-$currentDiceRoll.png",
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              child: const StyledText("Roll Dice"),
            ),
          ],
        );
  }

}