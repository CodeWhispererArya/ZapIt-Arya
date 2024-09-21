import 'package:flutter/material.dart';
import './authentication_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({ Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              OnboardingPage(
                title: 'Welcome to Pulze',
                subtitle: 'Your fitness journey starts here',
                image: 'assets/onboarding1.png',
              ),
              OnboardingPage(
                title: 'Track Your Progress',
                subtitle: 'Monitor your workouts and stay motivated',
                image: 'assets/onboarding2.png',
              ),
              OnboardingPage(
                title: 'Get Started',
                subtitle: 'Create an account to begin your fitness journey',
                image: 'assets/onboarding3.png',
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    if (_currentPage > 0) {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                Text(
                  _currentPage + 1 < 3
                      ? '$_currentPage+1/3'
                      : 'Get Started',
                  style: const TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    if (_currentPage < 2) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      // Navigate to authentication screen
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AuthenticationScreen()),
                      );
                    }
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}