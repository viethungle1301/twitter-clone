import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 30),
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Forget Password',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Forget Password',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Gap(20),
            const Text(
              'Enter your email address below to\nreceive password reset instruction',
              style: TextStyle(fontSize: 19, color: Colors.black38),
              textAlign: TextAlign.justify,
              maxLines: 2,
            ),
            const Gap(80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter email',
                  hintStyle:
                      const TextStyle(fontSize: 20, color: Colors.black38),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 215, 194, 194),
                ),
              ),
            ),
            const Gap(50),
            GestureDetector(
              onTap: () => 'next',
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 148),
                decoration: const ShapeDecoration(
                    shape: StadiumBorder(), color: Colors.blue),
                child: const Text(
                  'Submit',
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
