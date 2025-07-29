import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/applicant_list/applicant.dart';
import 'package:services_app/model/chat_model/chat_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/chat_screen/sub_screen/message_screen.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';
import 'package:services_app/view/auth/post&job_screen/sub_screen/booked_screen.dart';
import 'package:services_app/view/auth/post&job_screen/sub_screen/detail_page.dart';

class ProfileDetail extends StatefulWidget {
  final ChatCategories chatCategorieslist;
  final JobApplicant jobApplicantlist;
  const ProfileDetail({
    super.key,
    required this.jobApplicantlist,
    required this.chatCategorieslist,
  });

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: context.screenHeight*0.08,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => MessageScreen(
                            chatCategorieslist: widget.chatCategorieslist,
                          ),
                    ),
                  );
                },
                child: Container(
                  height: context.screenHeight * 0.06,
                  width: context.screenWidth * 0.3,
                  decoration: BoxDecoration(
                    color: greenthemecolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat_sharp, color: whitethemecolor),
                      10.kw,
                      Text(
                        "Chat",
                        style: TextStyle(fontSize: 15, color: whitethemecolor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
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
      ),
      body: FadeInLeft(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.jobApplicantlist.title,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

                10.kh,
                Row(
                  children: [
                    Text(
                      widget.jobApplicantlist.name,
                      style: TextStyle(fontSize: 14, color: themeprimarycolor),
                    ),
                    Spacer(),
                    Text(
                      "View Profile",
                      style: TextStyle(fontSize: 14, color: themeprimarycolor),
                    ),
                  ],
                ),
                10.kh,
                Text(
                  "Cost",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                2.kh,
                Text(
                  widget.jobApplicantlist.price,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: themeprimarycolor,
                  ),
                ),
                10.kh,
                Text(
                  "Status",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                2.kh,
                Text("Active", style: TextStyle(fontSize: 13)),
                10.kh,
                Text(
                  "Date",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                2.kh,
                Row(
                  children: [
                    Text(
                      widget.jobApplicantlist.date,
                      style: TextStyle(fontSize: 13),
                    ),
                    Text("-2024 | 7:30 PM", style: TextStyle(fontSize: 13)),
                  ],
                ),
                10.kh,
                Text(
                  "Service",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                2.kh,
                Text(
                  "Technology & Electronics",
                  style: TextStyle(fontSize: 13),
                ),
                10.kh,
                Text(
                  "Description:",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                2.kh,
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(fontSize: 13),
                ),
                20.kh,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => JobDetail()),
                          (route) => false,
                        );
                      },
                      child: Container(
                        height: context.screenHeight * 0.05,
                        width: context.screenWidth * 0.4,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amberAccent,
                        ),
                        child: Center(
                          child: Text(
                            "Regect Service",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: blackthemecolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => BookedScreen(
                                  jobApplicantlist: widget.jobApplicantlist,
                                ),
                          ),
                        );
                      },
                      child: Container(
                        height: context.screenHeight * 0.05,
                        width: context.screenWidth * 0.4,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orangeAccent,
                        ),
                        child: Center(
                          child: Text(
                            "Book Service",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: whitethemecolor,
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
