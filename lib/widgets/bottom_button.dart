import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function() onTap;
  final String buttonTitle;
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kCalculateButtonText,
          ),
        ),
      ),
    );
  }
}
