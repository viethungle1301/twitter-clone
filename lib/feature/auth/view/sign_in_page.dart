import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone_app/feature/auth/view/forget_password.dart';
import 'package:twitter_clone_app/feature/home/view/home_screen_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Sign in',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter email',
                hintStyle: const TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 215, 194, 194),
              ),
            ),
            const Gap(30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter password',
                hintStyle: const TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 215, 194, 194),
              ),
            ),
            const Gap(50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreenPage()));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                decoration: const ShapeDecoration(
                    shape: StadiumBorder(), color: Colors.blue),
                child: const Text(
                  'Email Login',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Gap(50),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetPassword()));
              },
              child: const Text(
                'Forget password?',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Gap(70),
            Center(
              child: ElevatedButton.icon(
                onPressed: () => 'null',
                icon: Image.asset(
                  'assets/images/logo_G.png',
                  height: 35,
                ),
                label: const Text(
                  'Continue with Google',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(200, 50),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
