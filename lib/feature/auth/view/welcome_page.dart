import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone_app/feature/auth/view/sign_in_page.dart';
import 'package:twitter_clone_app/feature/home/view/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: const ShapeDecoration(
                    shape: StadiumBorder(), color: Colors.blue),
                child: Text(
                  'Create account',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Gap(10),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: const ShapeDecoration(
                    shape: StadiumBorder(), color: Colors.blue),
                child: Text(
                  'Home page',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
