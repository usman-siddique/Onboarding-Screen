import 'package:flutter/material.dart';
import 'package:onboarding_screen/Screens/Onboarding/onboarding_content.dart';
import 'package:onboarding_screen/Widgets/custom_button.dart';
import '../../Routes/app_navigation.dart';
import '../../Routes/app_navigation_routes.dart';
import '../../Utils/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  List<Map<String, String>> onBoardingData = [
    {
      "text":
          "Plan trips to 100 countries with our hassle-free \ntravel service.",
      "img": "assets/images/slide-1.png"
    },
    {
      "text": "Hassle free and quick flight booking",
      "img": "assets/images/slide-2.png"
    },
    {
      "text": "Realtime flight status to keep you \ninformed",
      "img": "assets/images/slide-3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  img: onBoardingData[index]["img"] ?? "",
                  text: onBoardingData[index]['text'] ?? "",
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onBoardingData.length,
                        (index) => buildDots(index: index),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    CustomButton(
                      text: 'Continue',
                      press: () {
                        AppNavigation.pushAndKillAll(
                            routeName: AppNavRoutes.homeScreen);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDots({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
