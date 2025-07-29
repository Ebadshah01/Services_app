import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/login_pages/forgot_screens/verification_page.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      body: FadeInRight(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: context.screenHeight * 0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Saly-1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    10.kh,
                    Text(
                      "No worries! Enter your email and We’ll send\nyou a Verification code.",
                      style: TextStyle(fontSize: 13, color: greythemecolor),
                    ),
                    20.kh,
                    Text(
                      "Email Address",
                      style: TextStyle(fontSize: 14, color: greythemecolor),
                    ),
                    10.kh,
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        hintText: "your@gmail.com",
                        hintStyle: TextStyle(color: greythemecolor),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: greythemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: themeprimarycolor),
                        ),
                      ),
                    ),
                    20.kh,
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerificationPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: context.screenHeight * 0.05,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: themeprimarycolor,
                        ),
                        child: Center(
                          child: Text(
                            "Send Code",
                            style: TextStyle(
                              fontSize: 17,
                              color: whitethemecolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
