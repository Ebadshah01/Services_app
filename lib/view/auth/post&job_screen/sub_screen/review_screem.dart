import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/applicant_list/applicant.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/bottomnavbar.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';

class ReviewScreem extends StatefulWidget {
  final JobApplicant jobApplicantlist;
  const ReviewScreem({super.key, required this.jobApplicantlist});

  @override
  State<ReviewScreem> createState() => _ReviewScreemState();
}

class _ReviewScreemState extends State<ReviewScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        surfaceTintColor: whitethemecolor,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_active),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: FadeInLeft(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Review",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                30.kh,
                Text(
                  "Air Conditioning Service",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                20.kh,
                Text(
                  "Service Provider:",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Texas Air Conditioning Services pvt,ltd.",
                  style: TextStyle(fontSize: 13),
                ),
                10.kh,
                Text(
                  "Date",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.jobApplicantlist.date,
                  style: TextStyle(fontSize: 13),
                ),
                10.kh,
                Text(
                  "Add Review:",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    border: InputBorder.none,
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
                  "Rate your Service",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                10.kh,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.star, color: amberthemecolor, size: 30),
                        Text("Bad"),
                      ],
                    ),
                    15.kw,
                    Column(
                      children: [
                        Icon(Icons.star, color: amberthemecolor, size: 30),
                        Text("Poor"),
                      ],
                    ),
                    15.kw,
                    Column(
                      children: [
                        Icon(Icons.star, color: amberthemecolor, size: 30),
                        Text("Good"),
                      ],
                    ),
                    15.kw,
                    Column(
                      children: [
                        Icon(Icons.star, color: amberthemecolor, size: 30),
                        Text("Very Good"),
                      ],
                    ),
                    15.kw,
                    Column(
                      children: [
                        Icon(Icons.star, color: amberthemecolor, size: 30),
                        Text("Excellent"),
                      ],
                    ),
                  ],
                ),
                20.kh,

                Text(
                  "Rate your Service",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.amberAccent.shade100,
                        child: Icon(Icons.camera_alt),
                      ),
                      10.kh,
                      Text(
                        "Uploaded Images",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: orangethemecolor,
                        ),
                      ),
                    ],
                  ),
                ),
                20.kh,

                Text(
                  "Add Completion Photo:",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.amberAccent.shade100,
                        child: Icon(Icons.camera_alt),
                      ),
                      10.kh,
                      Text(
                        "Uploaded Images",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: orangethemecolor,
                        ),
                      ),
                    ],
                  ),
                ),
                20.kh,

                Text(
                  "Add Complrtion Photo",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.amberAccent.shade100,
                        child: Icon(Icons.camera_alt),
                      ),
                      10.kh,
                      Text(
                        "Uploaded Images",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: orangethemecolor,
                        ),
                      ),
                    ],
                  ),
                ),
                20.kh,
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavbar()),
                        (route) => false,
                      );
                    },
                    child: Container(
                      height: context.screenHeight * 0.05,
                      width: context.screenWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: themeprimarycolor,
                      ),
                      child: Center(
                        child: Text(
                          "Add Review",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: whitethemecolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                20.kh,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
