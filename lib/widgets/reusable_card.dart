import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final void Function()? onPress;
  const ReusableWidget({
    Key? key,
    required this.color,
    this.cardChild,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
