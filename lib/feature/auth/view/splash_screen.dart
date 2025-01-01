import 'dart:async';

import 'package:flutter/material.dart';
import 'package:twitter_clone_app/constants/assets_constants.dart';
import 'package:twitter_clone_app/feature/auth/view/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.black),
              ),
            ),
            Image.asset(
              AssetsImages.logoX,
              color: Colors.black,
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
