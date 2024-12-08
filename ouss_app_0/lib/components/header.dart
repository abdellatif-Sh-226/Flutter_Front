import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double size;
  final String label;
  const Header({super.key, required this.size,required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
