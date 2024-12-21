import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone_app/feature/auth/view/sign_in_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
          'Sign up',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: const TextStyle(fontSize: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 215, 194, 194),
              ),
            ),
            const Gap(40),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter email',
                hintStyle: const TextStyle(fontSize: 25),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: const Color.fromARGB(255, 215, 194, 194),
              ),
            ),
            const Gap(40),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter password',
                hintStyle: const TextStyle(fontSize: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 215, 194, 194),
              ),
            ),
            const Gap(40),
            TextField(
              decoration: InputDecoration(
                hintText: 'Confirm password',
                hintStyle: const TextStyle(fontSize: 25),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
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
                        builder: (context) => const SignInPage()));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 148, vertical: 16),
                decoration: const ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.blue,
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
