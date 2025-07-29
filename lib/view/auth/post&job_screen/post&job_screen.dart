// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/job_categories/job_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/post&job_screen/sub_screen/create_job.dart';

class PostJobScreen extends StatefulWidget {
  const PostJobScreen({super.key});

  @override
  State<PostJobScreen> createState() => _PostJobScreenState();
}

class _PostJobScreenState extends State<PostJobScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 tabs
      child: Scaffold(
        backgroundColor: whitethemecolor,
        appBar: AppBar(
          leading: const Icon(Icons.shopping_bag),
          title: const Text(
            "Post a Job",
            style: TextStyle(color: blackthemecolor),
          ),
          backgroundColor: Colors.white,
          // bottom:  TabBar(
          //   labelColor: blackthemecolor,
          //   indicatorColor: themeprimarycolor,
          //   tabs: [
          //     Tab(text: "Active"),
          //     Tab(text: "Completed"),
          //   ],
          // ),
        ),
        body: Column(
          children: [
            // Top Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: greenthemecolor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      offset: Offset(1, 1),
                      blurRadius: 1,
                      // ignore: deprecated_member_use
                      color: blackthemecolor.withOpacity(0.1),
                    ),
                  ],
                ),

                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Create jobs tailored to your needs and find suitable Service Providers",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateJob()),
                      );
                    },
                    child: Container(
                      height: context.screenHeight * 0.05,
                      width: context.screenWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: themeprimarycolor,
                      ),
                      child: Center(
                        child: Text(
                          "+  Create a Job",
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
            ),
            TabBar(
              labelColor: blackthemecolor,
              indicatorColor: themeprimarycolor,
              tabs: [Tab(text: "Active"), Tab(text: "Completed")],
            ),

            // TabBarView wrapped in Expanded
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TabBarView(
                  children: [Center(child: Text("Active Jobs")), JobList()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
