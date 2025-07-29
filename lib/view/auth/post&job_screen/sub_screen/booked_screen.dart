import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/applicant_list/applicant.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/post&job_screen/sub_screen/review_screem.dart';

class BookedScreen extends StatefulWidget {
  final JobApplicant jobApplicantlist;

  const BookedScreen({super.key, required this.jobApplicantlist});

  @override
  State<BookedScreen> createState() => _BookedScreenState();
}

class _BookedScreenState extends State<BookedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      body: FadeInLeft(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: context.screenHeight * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/360_F_511929539_hkrzPKGI6pEA8TwUfrwrB0g73FyEaowM.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  10.kh,
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(widget.jobApplicantlist.name),
                  10.kh,
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text("Air Conditioning Service"),
                  10.kh,
                  Text(
                    "Service",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Technology & Electronics",
                    style: TextStyle(fontSize: 13),
                  ),
                  10.kh,
                  Text(
                    "Status",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.done, color: greenthemecolor),
                      Text("Booked", style: TextStyle(fontSize: 13)),
                    ],
                  ),
                  10.kh,
                  Text(
                    "Cost",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
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
                    "Date & Time",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "24-06-2025 to 28-06-25 | 7:30 PM",
                    style: TextStyle(fontSize: 13),
                  ),
                  10.kh,
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "LorLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.em",
                    style: TextStyle(fontSize: 13),
                    maxLines: 7,
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
                                style:TextStyle(color: blackthemecolor),textAlign: TextAlign.center,
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
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (
                                                                  context,
                                                                ) => ReviewScreem(
                                                                  jobApplicantlist:
                                                                      widget
                                                                          .jobApplicantlist,
                                                                ),
                                                          ),
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
        ),
      ),
    );
  }
}
