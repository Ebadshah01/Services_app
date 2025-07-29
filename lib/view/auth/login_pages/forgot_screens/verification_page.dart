// ignore_for_file: deprecated_member_use

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/login_pages/forgot_screens/change_password.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(fontSize: 22, color: blackthemecolor),
  decoration: BoxDecoration(
    color: whitethemecolor,
    borderRadius: BorderRadius.circular(19),
    border: Border.all(color: greythemecolor),
    boxShadow: [
      BoxShadow(
        spreadRadius: 1,
        offset: Offset(1, 1),
        blurRadius: 1,
        color: blackthemecolor.withOpacity(0.1),
      ),
    ],
  ),
);
final focusedPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(fontSize: 22, color: blackthemecolor),
  decoration: BoxDecoration(
    color: whitethemecolor,
    borderRadius: BorderRadius.circular(19),
    border: Border.all(color: blackthemecolor),
    boxShadow: [
      BoxShadow(
        spreadRadius: 1,
        offset: Offset(1, 1),
        blurRadius: 1,
        color: blackthemecolor.withOpacity(0.1),
      ),
    ],
  ),
);
final submittedPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(fontSize: 22, color: blackthemecolor),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(19),
    border: Border.all(color: blackthemecolor),
    boxShadow: [
      BoxShadow(
        spreadRadius: 1,
        offset: Offset(1, 1),
        blurRadius: 1,
        color: blackthemecolor.withOpacity(0.1),
      ),
    ],
  ),
);

class _VerificationPageState extends State<VerificationPage> {
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
                      "Email Verification Code",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.kh,
                    Text(
                      "Kindly enter the 4 digit code sent to your\nemail address to reset your password.",
                      style: TextStyle(fontSize: 13, color: greythemecolor),
                    ),
                    20.kh,
                    Center(
                      child: Pinput(
                        defaultPinTheme: defaultPinTheme,
                        length: 4,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        onCompleted:
                            (value) => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChangePassword(),
                                ),
                              ),
                            },
                      ),
                    ),
                    20.kh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          "Didn't receive code?",
                          style: TextStyle(fontSize: 13, color: greythemecolor),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            " Re-send",
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
                          MaterialPageRoute(
                            builder: (context) => ChangePassword(),
                          ),
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
                            "Enter",
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
