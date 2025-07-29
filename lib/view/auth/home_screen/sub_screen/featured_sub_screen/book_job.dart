import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/featured_categories/featured_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/home_screen/sub_screen/featured_sub_screen/reschedule_screen.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';

class BookJob extends StatefulWidget {
  final FeaturedCategories featuredCategorieslist;

  const BookJob({super.key, required this.featuredCategorieslist});

  @override
  State<BookJob> createState() => _BookJobState();
}

class _BookJobState extends State<BookJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: context.screenHeight*0.09,
        color: Colors.transparent,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
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

              10.kh,
              Text("Description", style: TextStyle(fontSize: 13)),
              5.kh,
              // Container(
              //   height: context.screenHeight * 0.2,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     border: Border.all(width: 1, color: greythemecolor),
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
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                    //  bottom: 100,
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

              20.kh,
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => RescheduleScreen(
                              featuredCategorieslist:
                                  widget.featuredCategorieslist,
                            ),
                      ),
                    );
                  },
                  child: Container(
                    height: context.screenHeight * 0.05,
                    width: context.screenWidth * 0.3,
                    decoration: BoxDecoration(
                      color: themeprimarycolor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Book Now ",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: whitethemecolor,
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: whitethemecolor),
                      ],
                    ),
                  ),
                ),
              ),
              20.kh,
            ],
          ),
        ),
      ),
    );
  }
}
