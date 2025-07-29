import 'dart:async';

import 'package:flutter/material.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/login_pages/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SignIn(),
      
        ),
        (route)=>false
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                "assets/WhatsApp_Image_2024-07-19_at_4.23.39_PM-removebg-preview 2.png",
              ),
              backgroundColor: whitethemecolor,
            ),
          ),
          Text(
            "Service App",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: themeprimarycolor,
            ),
          ),
        ],
      ),
    );
  }
}
