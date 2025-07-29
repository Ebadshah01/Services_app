import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/bottomnavbar.dart';
import 'package:services_app/view/auth/login_pages/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

bool _pass = true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
      
                Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Center(
                  child: Text(
                    "Sign up now to get started with an account",
                    style: TextStyle(fontSize: 14, color: greythemecolor),
                  ),
                ),
                20.kh,
                Text(
                  "Full Name",
                  style: TextStyle(fontSize: 14, color: greythemecolor),
                ),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    hintText: "Your Name",
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
                10.kh,
      
                Text(
                  "Email Address",
                  style: TextStyle(fontSize: 14, color: greythemecolor),
                ),
                5.kh,
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
                10.kh,
                Text(
                  "Password",
                  style: TextStyle(fontSize: 14, color: greythemecolor),
                ),
                5.kh,
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
                10.kh,
                Text(
                  "Password",
                  style: TextStyle(fontSize: 14, color: greythemecolor),
                ),
                5.kh,
                TextField(
                  obscureText: _pass,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
      
                    border: InputBorder.none,
                    hintText: "Confirm password",
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
                10.kh,
                20.kh,
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavbar()),
                      (route)=>false
                    );
                  },
                  child: Container(
                    height: context.screenHeight * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: themeprimarycolor,
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
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
                    Text("Already have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: themeprimarycolor,
                            fontWeight: FontWeight.bold,
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
