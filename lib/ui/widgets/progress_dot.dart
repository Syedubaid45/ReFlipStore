import 'package:flutter/material.dart';

enum DotState { completed, current, upcoming }

class ProgressDot extends StatelessWidget {
  final DotState state;
  final double size;
  final Color activeColor;
  final Color inactiveColor;
  final double strokeWidth;

  const ProgressDot({
    Key? key,
    required this.state,
    this.size = 24,
    this.activeColor = const Color(0xFFE84D4D),
    this.inactiveColor = const Color(0xFFE84D4D),
    this.strokeWidth = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case DotState.completed:
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(color: activeColor, shape: BoxShape.circle),
        );
      case DotState.current:
        return Container(
          width: size,
          height: size,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: activeColor, width: strokeWidth),
          ),
          child: Container(
            width: size * 0.52,
            height: size * 0.52,
            decoration: BoxDecoration(
              color: activeColor,
              shape: BoxShape.circle,
            ),
          ),
        );
      case DotState.upcoming:
      default:
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: inactiveColor, width: strokeWidth),
            color: Colors.transparent,
          ),
        );
    }
  }
}
