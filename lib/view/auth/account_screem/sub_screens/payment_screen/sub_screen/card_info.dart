import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/payment_screen/sub_screen/new_card.dart';

class CardInfo extends StatefulWidget {
  const CardInfo({super.key});

  @override
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        title: Text(
          "Edit Your Card Information",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_active_sharp),
          ),
        ],
      ),

      body: FadeInLeft(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: context.screenHeight * 0.25,
                        width: context.screenHeight * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvAVfs8elUWHnN0RoPKaE1gaW5BlWXTru0aA&s",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      10.kh,
                      Text(
                        "Master Card",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Card Number", style: TextStyle(fontSize: 13)),
                5.kh,
                SizedBox(
                  height: context.screenHeight * 0.065,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "123 456 789",
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
                ),

                10.kh,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text("Expiry Date", style: TextStyle(fontSize: 13)),
                //         5.kh,
                //         SizedBox(
                //           height: context.screenHeight * 0.05,
                //           width: context.screenWidth * 0.35,
                //           child: Expanded(
                //             child: TextField(
                //               decoration: InputDecoration(
                //                 contentPadding: EdgeInsets.symmetric(
                //                   horizontal: 10,
                //                 ),
                //                 hintText: "19/07/2029",
                //                 border: InputBorder.none,
                //                 enabledBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(5),
                //                   borderSide: BorderSide(color: greythemecolor),
                //                 ),
                //                 focusedBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(5),
                //                   borderSide: BorderSide(
                //                     color: themeprimarycolor,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text("cvv", style: TextStyle(fontSize: 13)),
                
                //         SizedBox(
                //           height: context.screenHeight * 0.05,
                //           width: context.screenWidth * 0.2,
                //           child: Expanded(
                //             child: TextField(
                //               decoration: InputDecoration(
                //                 contentPadding: EdgeInsets.symmetric(
                //                   horizontal: 10,
                //                 ),
                //                 hintText: "123",
                //                 border: InputBorder.none,
                //                 enabledBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(5),
                //                   borderSide: BorderSide(color: greythemecolor),
                //                 ),
                //                 focusedBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(5),
                //                   borderSide: BorderSide(
                //                     color: themeprimarycolor,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
         
                10.kh,
                Text("Card Holder", style: TextStyle(fontSize: 13)),
                5.kh,

                SizedBox(
                  height: context.screenHeight * 0.065,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Ebad Ali",
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
                ),
                20.kh,

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewCardScreen()),
                    );
                  },
                  child: Container(
                    height: context.screenHeight * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: themeprimarycolor,
                    ),
                    child: Center(
                      child: Text(
                        "Update",
                        style: TextStyle(
                          fontSize: 17,
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
        ),
      ),
    );
  }
}
