import 'dart:ui';

import 'package:calculator_app/widget/Constant.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Button({
    super.key,
    required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(
              title,
              style: headingTextStyle,
            )),
          ),
        ),
      ),
    );
  }
}
