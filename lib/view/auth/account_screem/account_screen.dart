import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/about_screen.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/booking_screen.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/conditions.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/edit_profile.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/general_setting.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/help_center.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/payment_screen/payment_screen.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/privacy_policy.dart';
import 'package:services_app/view/auth/home_screen/home_screen.dart';
import 'package:services_app/view/auth/login_pages/forgot_screens/change_password.dart';
import 'package:services_app/view/auth/login_pages/sign_in.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        surfaceTintColor: whitethemecolor,
        title: Text(
          "Account",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },

              child: Icon(Icons.notifications_active),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: blackthemecolor,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUgKjxMutuRT6xSsVycxZjhcJWiPkHOCbq0A&s",
                ),
              ),
            ),
            5.kh,
            Text(
              "Ebad Ali",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            5.kh,
            _editProfile(Icons.person, "Edit", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            }, context: context),
            // _editProfile(context: context),
            _myBooking(context: context),
            _paymentMethod(context: context),
            _generalSetting(context: context),
            _changePassword(context: context),
            _notification(context: context),
            _termsCondition(context: context),
            _privacyPolicy(context: context),
            _helpCenter(context: context),
            _about(context: context),
            _logout(context: context),

            60.kh,
          ],
        ),
      ),
    );
  }
}

Widget _editProfile(
  IconData icon,
  String title,
  VoidCallback onTap, {
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: onTap,

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [Icon(icon), 10.kw, Text(title)]),
        ),
      ),
    ),
  );
}

Widget _myBooking({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookingScreen()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Icons.line_weight_sharp),
              10.kw,
              Text("My Bookings"),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _paymentMethod({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentScreen()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [Icon(Icons.payment), 10.kw, Text("Payment Method")],
          ),
        ),
      ),
    ),
  );
}

Widget _generalSetting({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GeneralSetting()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [Icon(Icons.settings), 10.kw, Text("General Settings")],
          ),
        ),
      ),
    ),
  );
}

Widget _changePassword({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangePassword()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [Icon(Icons.air_sharp), 10.kw, Text("Change Password")],
          ),
        ),
      ),
    ),
  );
}

Widget _notification({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationScreen()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Icons.notification_important_sharp),
              10.kw,
              Text("Notification"),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _termsCondition({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TermsCondition()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Icons.confirmation_num_outlined),
              10.kw,
              Text("Terms & Conditions"),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _privacyPolicy({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PrivacyPolicy()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [Icon(Icons.security), 10.kw, Text("Privacy Policy")],
          ),
        ),
      ),
    ),
  );
}

Widget _helpCenter({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HelpCenter()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [Icon(Icons.headphones), 10.kw, Text("Help Center")],
          ),
        ),
      ),
    ),
  );
}

Widget _about({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutScreen()),
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [Icon(Icons.announcement_outlined), 10.kw, Text("About")],
          ),
        ),
      ),
    ),
  );
}

Widget _logout({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              backgroundColor: whitethemecolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // 🔁 sharp corners
              ),
              child: Container(
                height: context.screenHeight * 0.15, // 🔁 increase height
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Are you sure you want to log out",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: context.screenHeight * 0.045,
                            width: context.screenWidth * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: themeprimarycolor),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text("Or"),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                              (route) => false,
                            );
                          },
                          child: Container(
                            height: context.screenHeight * 0.045,
                            width: context.screenWidth * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: themeprimarycolor,
                            ),
                            child: Center(
                              child: Text(
                                "Log Out",
                                style: TextStyle(
                                  fontSize: 12,
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
            );
          },
        );
      },
      child: Container(
        height: context.screenHeight * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greythemecolor, width: 1.5),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [Icon(Icons.logout), 10.kw, Text("Logout")]),
        ),
      ),
    ),
  );
}
