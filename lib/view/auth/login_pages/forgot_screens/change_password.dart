import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/login_pages/forgot_screens/confirm_screen.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}
bool _pass = true;
bool _change = true;

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      body: FadeInRight(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                 
                  Stack(
                    children:[ Container(
                      height: context.screenHeight * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Saly-1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
          
                      
                    ),
                     GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                    ]
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Change Password?",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      10.kh,
                      Text(
                        "You are all set to reset your password. Kindly\nSelect a Strong password.",
                        style: TextStyle(fontSize: 13, color: greythemecolor),
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
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: greythemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: themeprimarycolor),
                        ),
                         suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _pass = !_pass;
                              });
                            },
                            child: Icon(_pass
                                ? Icons.visibility_off_outlined
                                : Icons.visibility)),
                      ),
                    ),
                    10.kh,
                    Text(
                      "Confirm Password",
                      style: TextStyle(fontSize: 14, color: greythemecolor),
                    ),
                    5.kh,
                    TextField(
                      obscureText: _change,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                         suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _change = !_change;
                              });
                            },
                            child: Icon(_change
                                ? Icons.visibility_off_outlined
                                : Icons.visibility)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: greythemecolor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: themeprimarycolor),
                        ),
                      ),
                    ), 
                    20.kh,
                    GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConfirmScreen(),
                            ),
                            (route)=>false
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
                              "Confirm",
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
      ),
    );

  }
}