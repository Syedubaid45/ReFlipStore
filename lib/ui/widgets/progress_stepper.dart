import 'package:flutter/material.dart';
import 'progress_dot.dart';

class ProgressStepper extends StatelessWidget {
  final int itemCount;
  final int currentIndex;
  final double dotSize;
  final double lineThickness;
  final Color activeColor;
  final Color inactiveColor;
  final double dotStroke;

  const ProgressStepper({
    super.key,
    required this.itemCount,
    required this.currentIndex,
    this.dotSize = 28,
    this.lineThickness = 4,
    this.activeColor = const Color(0xFFE84D4D),
    this.inactiveColor = const Color(0xFFE84D4D),
    this.dotStroke = 3,
  }) : assert(itemCount > 0),
       assert(currentIndex >= 0);

  Widget _buildLine(bool active) {
    return Expanded(
      child: Container(
        height: lineThickness,
        color: active ? activeColor : inactiveColor,
      ),
    );
  }

  DotState _dotStateFor(int index) {
    if (index < currentIndex) return DotState.completed;
    if (index == currentIndex) return DotState.current;
    return DotState.upcoming;
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    for (var i = 0; i < itemCount; i++) {
      children.add(
        ProgressDot(
          state: _dotStateFor(i),
          size: dotSize,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
          strokeWidth: dotStroke,
        ),
      );

      if (i != itemCount - 1) {
        final lineActive = i < currentIndex;
        children.add(_buildLine(lineActive));
      }
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: children);
  }
}
