import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/constraints/route_string.dart';
import 'package:pasabahce/presentation/widgets/primary_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  Widget _buildFirstOnBoardingItems() {
    return Column(
      children: [
        const Expanded(
          flex: 2,
          child: Image(
            image: AssetImage(
              'assets/images/onboarding1.png',
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          '€5650',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Text(
          'HISTORY CULTURE GLASS',
          style: TextStyle(
            fontSize: 13,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Gülçehre İbrik \nLimited Edition',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 80),
        primaryButton(
          backgroundColor: MyColors.gold,
          title: 'MASTER BUTTON',
        ),
      ],
    );
  }

  Widget _buildSecondOnBoardingItems(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 90),
        const Text(
          'HISTORY CULTURE GLASS',
          style: TextStyle(
            fontSize: 13,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Hagia Sophia \nDeesis Mosaic Vase',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Text(
          '€3450',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Expanded(
          flex: 2,
          child: Image(
            image: AssetImage(
              'assets/images/onboarding2.png',
            ),
          ),
        ),
        const SizedBox(height: 70),
        primaryButton(
          backgroundColor: MyColors.gold,
          title: 'MASTER BUTTON',
          onTap: () {
            Navigator.of(context).pushNamed(registerRoute);
          },
        ),
      ],
    );
  }

  Widget _buildThiredOnBoardingItems(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: Image(
            image: AssetImage(
              'assets/images/onboarding3.png',
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '€5650',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const Text(
                'HISTORY CULTURE GLASS',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Mystical Vase \nLimited Edition',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              primaryButton(
                backgroundColor: Colors.black,
                title: 'SIGN IN',
                onTap: () {
                  Navigator.of(context).pushNamed(loginRoute);
                },
              ),
              primaryButton(
                backgroundColor: MyColors.gold,
                title: 'CREATIVE ACCOUNT',
                onTap: () {
                  Navigator.of(context).pushNamed(registerRoute);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            children: [
              SmoothPageIndicator(
                controller: boardController,
                count: 3,
                effect: WormEffect(
                  dotHeight: 6,
                  dotWidth: 6,
                  dotColor: const Color(0XFF707070),
                  activeDotColor: MyColors.gold,
                  spacing: 12.0,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: PageView(
                  controller: boardController,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    _buildFirstOnBoardingItems(),
                    _buildSecondOnBoardingItems(context),
                    _buildThiredOnBoardingItems(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
