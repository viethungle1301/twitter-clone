import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone_app/feature/auth/view/sign_up.dart';
import 'package:twitter_clone_app/feature/auth/view/sign_in_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/x_logo.png',
          color: Colors.black,
          width: 30,
          height: 30,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(200),
            const Text(
              'See what\'s happening in\nthe world right now. ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const Gap(50),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: const ShapeDecoration(
                    shape: StadiumBorder(), color: Colors.blue),
                child: Text(
                  'Create account',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                text: 'Have an account already?',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: ' Log in',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
