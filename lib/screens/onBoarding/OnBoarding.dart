import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Container(),
    );
  }

  // final pages = [
  //   SkOnboardingModel(
  //       title: 'Title Goes Here',
  //       description: ' sed do eiusmod tempor',
  //       titleColor: Colors.black,
  //       descripColor: const Color(0xFF929794),
  //       imagePath: 'assets/images/th.jpg'),
  //   SkOnboardingModel(
  //       title: 'Title Goes Here',
  //       description: ' sed do eiusmod tempor',
  //       titleColor: Colors.black,
  //       descripColor: const Color(0xFF929794),
  //       imagePath: 'assets/images/delivies.jpg'),
  //   SkOnboardingModel(
  //       title: 'Title Goes Here',
  //       description:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
  //       titleColor: Colors.black,
  //       descripColor: const Color(0xFF929794),
  //       imagePath: 'assets/images/burger.jpg'),
  // ];final pages = [
  //   SkOnboardingModel(
  //       title: 'Title Goes Here',
  //       description: ' sed do eiusmod tempor',
  //       titleColor: Colors.black,
  //       descripColor: const Color(0xFF929794),
  //       imagePath: 'assets/images/th.jpg'),
  //   SkOnboardingModel(
  //       title: 'Title Goes Here',
  //       description: ' sed do eiusmod tempor',
  //       titleColor: Colors.black,
  //       descripColor: const Color(0xFF929794),
  //       imagePath: 'assets/images/delivies.jpg'),
  //   SkOnboardingModel(
  //       title: 'Title Goes Here',
  //       description:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
  //       titleColor: Colors.black,
  //       descripColor: const Color(0xFF929794),
  //       imagePath: 'assets/images/burger.jpg'),
  // ];
}
