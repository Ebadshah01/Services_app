import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';
import 'package:services_app/view/auth/post&job_screen/sub_screen/detail_page.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({super.key});

  @override
  State<CreateJob> createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        title: Text(
          "Create a Job Post",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
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
        backgroundColor: whitethemecolor,
        surfaceTintColor: whitethemecolor,
      ),
      body: FadeInDown(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: context.screenHeight * 0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: greythemecolor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Icon(
                        Icons.image,
                        color: blackthemecolor,
                        size: 40,
                      ),
                    ),
                    Positioned(
                      right: context.screenWidth * 0.01,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: whitethemecolor,
                          radius: 18,
                          child: Icon(
                            Icons.image_outlined,
                            color: redthemecolor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                10.kh,
                Text("Job Title", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("Proposed Cost", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("Services", style: TextStyle(fontSize: 13)),
                5.kh,
                Container(
                  constraints: BoxConstraints(minHeight: 45),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: greythemecolor),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      "Technology & Electronics",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                10.kh,
                Text("Address", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("City", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("State", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("Zip Code", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("Date(From)", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("Date(To)", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("Time", style: TextStyle(fontSize: 13)),
                5.kh,
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                Text("Description", style: TextStyle(fontSize: 13)),
                5.kh,
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
                // Container(
                //   height: context.screenHeight*0.2,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     border: Border.all(width: 1,color: greythemecolor)
                //   ),

                //   child: Expanded(
                //     child: TextField(
                //       decoration: InputDecoration(
                //         contentPadding: EdgeInsets.symmetric(horizontal: 10),
                //         border: InputBorder.none,

                //       ),
                //     ),
                //   ),
                // ),
                10.kh,
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JobDetail()),
                      );
                    },
                    child: Container(
                      height: context.screenHeight * 0.05,
                      width: context.screenWidth * 0.4,
                      decoration: BoxDecoration(
                        color: themeprimarycolor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Post Job",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: whitethemecolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                10.kh,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
