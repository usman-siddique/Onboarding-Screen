import 'package:flutter/material.dart';
import 'package:onboarding_screen/Utils/app_colors.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.text,
    required this.img,
  });

  final String text, img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text(
          "FLIGHT",
          style: TextStyle(
            fontSize: 36,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: kTextColor,
              ),
        ),
        const Spacer(flex: 2),
        Image.asset(img, height: 235, width: 235),
      ],
    );
  }
}
