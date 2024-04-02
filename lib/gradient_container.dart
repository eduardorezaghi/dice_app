import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> gradientColors;

  const GradientContainer(this.gradientColors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
      ),
      child: const Center(
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: StyledText('Hello, World!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            )
          ),
        ),
      ),
    );
  }
}