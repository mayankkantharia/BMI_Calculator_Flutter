import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final Function() onPressed;
  const RoundIconButton({
    Key? key,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      fillColor: const Color(0xFF4C4F5E),
      shape: const CircleBorder(),
      child: Icon(icon),
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
