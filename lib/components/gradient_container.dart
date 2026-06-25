import 'package:flutter/material.dart';
import 'roller.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red,
                Colors.purple,
              ],
            ),
          ),
          child: Center(
            child: Roller(),
            ),
        );
  }
}