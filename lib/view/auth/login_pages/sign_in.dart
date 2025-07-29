import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/bottomnavbar.dart';
import 'package:services_app/view/auth/login_pages/forgot_screens/forgot_page.dart';
import 'package:services_app/view/auth/login_pages/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

bool _ischeck = false;
bool _pass = true;

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      body: FadeInLeft(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        "assets/WhatsApp_Image_2024-07-19_at_4.23.39_PM-removebg-preview 2.png",
                      ),
                      backgroundColor: whitethemecolor,
                    ),
                  ),
                  // Center(
                  //   child: Container(
                  //     height: context.screenHeight * 0.2,
                  //     width: context.screenWidth * 0.35,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(60),
                  //       image: DecorationImage(
                  //         image: AssetImage(
                  //           "assets/WhatsApp_Image_2024-07-19_at_4.23.39_PM-removebg-preview 2.png",
                  //         ),
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Center(
                    child: Text(
                      "Log In to your Account",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Welcome back, please enter your details",
                      style: TextStyle(fontSize: 14, color: greythemecolor),
                    ),
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
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 14, color: greythemecolor),
                  ),
                  10.kh,
                  TextField(
                    obscureText: _pass,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),

                      border: InputBorder.none,
                      hintText: "your password",
                      hintStyle: TextStyle(color: greythemecolor),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: greythemecolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: themeprimarycolor),
                      ),

                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _pass = !_pass;
                          });
                        },
                        child: Icon(
                          _pass
                              ? Icons.visibility_off_outlined
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: themeprimarycolor,
                        checkColor: whitethemecolor,
                        value: _ischeck,
                        onChanged: (newValue) {
                          setState(() {
                            _ischeck = newValue!;
                          });
                        },
                      ),

                      Text(
                        "Remember me",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  20.kh,
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavbar()),
                        (route) => false,
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
                          "Log In",
                          style: TextStyle(
                            fontSize: 17,
                            color: whitethemecolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  20.kh,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: themeprimarycolor,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
