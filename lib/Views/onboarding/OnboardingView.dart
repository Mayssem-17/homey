import 'package:flutter/material.dart';
import 'package:homey/Views/authenticationViews/LoginView.dart';
import 'package:homey/Views/onboarding/FirstView.dart';
import 'package:homey/Views/onboarding/SecondView.dart';
import 'package:homey/Views/onboarding/ThirdPage.dart';
import 'package:homey/Views/Components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../main.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final int firstTime = 0;
  bool isLastPage = false;

  List<Widget> views = [
    FirstView(),
    SecondView(),
    ThirdView(),
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: isLastPage
            ? myButton(
          10,
          30,
          10,
          Colors.blue,
          MediaQuery.of(context).size.width * 9,
          MediaQuery.of(context).size.height * 0.07,
          "Get Started!",
          Colors.white,
              () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginView()));
          },
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => controller.jumpToPage(views.length - 1),
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: views.length,
              onDotClicked: (index) {
                controller.animateToPage(index,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeIn);
              },
              effect: WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () => controller.nextPage(
                  duration: Duration(milliseconds: 700),
                  curve: Curves.easeIn),
              child: Text(
                "Next",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: PageView.builder(
          onPageChanged: (index) {
            setState(() => isLastPage = views.length - 1 == index);
          },
          itemCount: views.length,
          controller: controller,
          itemBuilder: (context, index) {
            return views[index];
          },
        ),
      ),
    );
  }
}
