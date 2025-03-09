import 'package:acrillic/constants/colors.dart';
import 'package:acrillic/widgets/buttons.dart';
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
            // App Logo
            Image.asset("assets/images/app-logo.png", width: 200),
            // Welcome text
            SizedBox(height: 40),
            Text(
              "Hello, Welcome",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColor.primaryText,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "where art find its audience",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryText,
              ),
            ),
            // SizedBox(height: 10,),
            SizedBox(height: 30),
            Button(
              width: 200,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                context.push("/login");
              },
            ),
            SizedBox(height: 10),
            Button(
              onPressed: (){
                context.push("/signup");
              },
              width: 200,
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
