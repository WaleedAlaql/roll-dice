import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.topLeftColor,
    this.bottomRightColor, {
    super.key,
  });

  final Color topLeftColor;
  final Color bottomRightColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            topLeftColor,
            bottomRightColor,
          ],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
