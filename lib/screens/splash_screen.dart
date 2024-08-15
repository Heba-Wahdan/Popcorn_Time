import 'package:flutter/material.dart';
import 'package:popcorn_time/screens/home_screen.dart';
import 'package:popcorn_time/screens/tabs_screen.dart';
// Update this with your actual HomeScreen import

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to home screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => TabsScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // You can choose any background color
      body: Center(
        child: Image.asset(
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          '/Users/hebawahdan/popcorn_time/lib/assets/images/jn.jpeg', // Make sure you have a logo image in your assets
        ),
      ),
    );
  }
}
