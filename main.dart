// ignore: unused_import
import 'dart:async';
import 'package:flutter_application_1/bottom_bar.dart';
import 'package:flutter_application_1/dbHelper.dart/mongodb.dart';

// ignore: unused_import
import 'login_signup.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 5000,
            splash: Center(
              child: Image.asset('assets/images/logo_transparent.png'),
            ),
            splashIconSize: 400,
            nextScreen: OnboardingScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white));
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<OnboardingPage> _pages = [
    OnboardingPage(
      animation: 'assets/images/hello.json',
      title: 'Welcome to NeoGenie',
      description:
          'NeoGenie is an innovative mobile application designed to revolutionize your daily life. With a sleek and intuitive interface, NeoGenie offers a range of advanced features and personalized services to enhance your mobile experience.',
    ),
    OnboardingPage(
      animation: 'assets/images/data_track.json',
      title: 'Track Your Data Usage',
      description:
          'Our app helps you monitor your data usage in real-time, providing you with detailed insights and analytics',
    ),
    OnboardingPage(
      animation: 'assets/images/ai.json',
      title: 'Predict Data Packages',
      description:
          'Experience the power of artificial intelligence with NeoGenie'
          's advanced data package prediction feature. Our cutting-edge AI technology analyzes your historical data usage patterns, device behavior, and user preferences to accurately forecast your future data needs',
    ),
    OnboardingPage(
      animation: 'assets/images/start.json',
      title: 'Get Started with NeoGenie',
      description:
          'So, Welcome back to a smarter way of managing your mobile experience with NeoGenie',
    ),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _navigateToNext() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // Navigate to the next screen (e.g., home screen)
      // Replace `NextScreen()` with your desired screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LottieAnimationScreen()),
      );
    }
  }

  void _skipOnboarding() {
    // Navigate to the next screen without completing onboarding
    // Replace `NextScreen()` with your desired screen.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LottieAnimationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return _pages[index];
            },
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: _skipOnboarding,
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < _pages.length; i++)
                      _buildPageIndicator(i == _currentPage),
                  ],
                ),
                GestureDetector(
                  onTap: _navigateToNext,
                  child: Text(
                    _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _buildPageIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String animation;
  final String title;
  final String description;

  const OnboardingPage({
    required this.animation,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            animation,
            height: 300.0,
            width: 300.0,
          ),
          SizedBox(height: 30.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}

class LottieAnimationScreen extends StatefulWidget {
  const LottieAnimationScreen({super.key});

  @override
  _LottieAnimationScreenState createState() => _LottieAnimationScreenState();
}

class _LottieAnimationScreenState extends State<LottieAnimationScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start the timer after the widget is initialized
    _timer = Timer(const Duration(milliseconds: 2900), () {
      // Navigate to the home screen after 5 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomBar()),
      );
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Lottie.asset(
              'assets/images/waiting.json',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
