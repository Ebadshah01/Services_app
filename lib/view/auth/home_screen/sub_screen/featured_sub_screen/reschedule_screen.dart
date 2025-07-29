import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/featured_categories/featured_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/bottomnavbar.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';

class RescheduleScreen extends StatefulWidget {
  final FeaturedCategories featuredCategorieslist;

  const RescheduleScreen({super.key, required this.featuredCategorieslist});

  @override
  State<RescheduleScreen> createState() => _RescheduleScreenState();
}

class _RescheduleScreenState extends State<RescheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: context.screenHeight*0.09,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_on),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.featuredCategorieslist.title,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              10.kh,
              Text("Cost", style: TextStyle(fontSize: 13)),
              Text(
                widget.featuredCategorieslist.price,
                style: TextStyle(
                  color: themeprimarycolor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              10.kh,
              Text(
                "Service Provider:",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.featuredCategorieslist.category,
                style: TextStyle(fontSize: 13),
              ),
              10.kh,
              Row(
                children: [
                  10.kw,
                  Text(
                    "Visit Vendor",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: greenthemecolor,
                    ),
                  ),
                  Icon(Icons.arrow_forward_outlined, color: greenthemecolor),
                ],
              ),
              10.kh,
              Text(
                "Date Proposed by Vendor",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text("13/06/2025", style: TextStyle(fontSize: 13)),
              10.kh,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: context.screenHeight * 0.05,
                    width: context.screenWidth * 0.4,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orangeAccent.shade200,
                    ),
                    child: Center(
                      child: Text(
                        "Confirm Booking",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: whitethemecolor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: context.screenHeight * 0.05,
                    width: context.screenWidth * 0.4,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amberAccent.shade100,
                    ),
                    child: Center(
                      child: Text(
                        "Reschedule",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blackthemecolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              10.kh,
              Text(
                "Status",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: themeprimarycolor,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: whitethemecolor,
                    ),
                  ),
                  10.kw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Service Requested",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "You have successfully Requseted a service",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              10.kh,

              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: themeprimarycolor,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: whitethemecolor,
                    ),
                  ),
                  10.kw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Approved By Admin",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Your Request has been approved and assigned by admin",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              10.kh,

              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: themeprimarycolor,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: whitethemecolor,
                    ),
                  ),
                  10.kw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Confirm By Vendor",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Vendor has confirmed your service ",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              10.kh,

              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: themeprimarycolor,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: whitethemecolor,
                    ),
                  ),
                  10.kw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Service Booked",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Service by Successfully booked ",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              20.kh,
              
              Center(
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: whitethemecolor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ), // sharp or very slight round
                              ),
        
                              content: const Text(
                                "Do you Want to mark this service as 'Completed'",
                                style: TextStyle(color: blackthemecolor),textAlign: TextAlign.center,
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                          border: Border.all(
                                            color: themeprimarycolor,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text("No", style: TextStyle()),
                                        ),
                                      ),
                                    ),
        
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                  4,
                                                ), // sharp or very slight round
                                              ),
                                              backgroundColor: whitethemecolor,
                                              content: SizedBox(
                                                width:
                                                    context.screenWidth *
                                                    0.7, // optional: to control width
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize
                                                          .min, // this reduces dialog height
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 40,
                                                      backgroundColor:
                                                          greenthemecolor,
                                                      child: Icon(
                                                        Icons.done,
                                                        color: whitethemecolor,
                                                        size: 40,
                                                      ),
                                                    ),
                                                    10.kh,
                                                    Text(
                                                      "Service Successfully Completed",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                    const SizedBox(height: 6),
                                                    Text(
                                                      "Let us know your experience and leave a review",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: greythemecolor,
                                                      ),
                                                      maxLines: 2,
                                                      textAlign: TextAlign.center,
                                                    ),
                                                    20.kh,
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.pushAndRemoveUntil(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (
                                                                  context,
                                                                ) =>BottomNavbar(),
                                                              
                                                          ),
                                                          (route)=>false,
                                                          
                                                        );
                                                      },
                                                      child: Container(
                                                        height:
                                                            context.screenHeight *
                                                            0.05,
                                                        width:
                                                            context.screenWidth *
                                                            0.4,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                5,
                                                              ),
                                                          color:
                                                              themeprimarycolor,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "Leave a review",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  whitethemecolor,
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: context.screenHeight * 0.045,
                                        width: context.screenWidth * 0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                            color: themeprimarycolor,
                                          ),
                                          color: themeprimarycolor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Yes",
                                            style: TextStyle(
                                              color: whitethemecolor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        height: context.screenHeight * 0.05,
                        width: context.screenWidth * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: themeprimarycolor,
                        ),
                        child: Center(
                          child: Text(
                            "Mark As Completed",
                            style: TextStyle(
                              color: whitethemecolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
