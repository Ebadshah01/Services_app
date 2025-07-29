// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/featured_categories/featured_categories.dart';
import 'package:services_app/model/servies_categories/servies_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/home_screen/sub_screen/featured_screen.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showAll = false;
  void toggleView() {
    setState(() {
      showAll = !showAll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        surfaceTintColor: whitethemecolor,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage(
              
              "assets/WhatsApp_Image_2024-07-19_at_4.23.39_PM-removebg-preview 2.png",
            ),
            backgroundColor: whitethemecolor,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            child: Icon(Icons.notifications_active),
          ),
          10.kw,
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: context.screenHeight * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: greythemecolor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: greythemecolor),
                        10.kw,
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search a service",
                              hintStyle: TextStyle(color: greythemecolor),
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.location_on_outlined, color: greythemecolor),
                      ],
                    ),
                  ),
                ),
              ),
              10.kh,
              Container(
                height: context.screenHeight * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: themeprimarycolor,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      offset: Offset(1, 1),
                      blurRadius: 3,
                      color: blackthemecolor.withOpacity(0.2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Every Service that you need, is\nnow on a Single Platform",
                        style: TextStyle(
                          fontSize: 17,
                          color: whitethemecolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              20.kh,
              Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: toggleView,
                    child: Text(
                      showAll ? "View Less" : "View All",
                      style: TextStyle(fontSize: 13, color: themeprimarycolor),
                    ),
                  ),
                ],
              ),
              10.kh,
              CategoryGrid(limit: showAll ? null : 6),
              20.kh,
              Row(
                children: [
                  Text(
                    "Featured",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FeaturedScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(fontSize: 13, color: themeprimarycolor),
                    ),
                  ),
                ],
              ),
              10.kh,
              FeaturedGrid(limit: 4),
            //  featureGrid(context: context, indexLength: 4.0),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget featureGrid({
//   required BuildContext context,
//   required double indexLength,
// }) {
//   return Column(children: [],);
// }
