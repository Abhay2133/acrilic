import 'package:acrillic/widgets/button.dart';
import 'package:acrillic/widgets/starting_bg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Home')),
      body: StartingBG(
        mainUI: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", width: 200),
            SizedBox(height: 40),
            Text(
              "Hello, Welcome",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Text(
              "\"Unleash your inner artist - Masterpieces",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            // SizedBox(height: 10,),
            Text(
              "Delivered to your door\"",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 30),
            Button(
              width: 200,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                context.push("/login");
              },
            ),
            SizedBox(height: 10),
            Button(
              width: 200,
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
