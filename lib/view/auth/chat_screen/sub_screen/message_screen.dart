import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/chat_model/chat_categories.dart';
import 'package:services_app/themecolors/color.dart';

class MessageScreen extends StatefulWidget {
  final ChatCategories chatCategorieslist;
  const MessageScreen({super.key, required this.chatCategorieslist});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: SizedBox(
      //   height: context.screenHeight * 0.1,
      //   width: double.infinity,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 10),
      //     child: Row(
      //       children: [
      //         Text("+", style: TextStyle(fontSize: 30)),
      //         10.kw,
      //         Expanded(
      //           child: Container(
      //             height: context.screenHeight * 0.06,
      //             width: context.screenWidth * 0.8,
      //             decoration: BoxDecoration(
      //               border: Border.all(color: greythemecolor),
      //               borderRadius: BorderRadius.circular(5),
      //             ),

      //             child: TextField(
      //               decoration: InputDecoration(
      //                 contentPadding: EdgeInsets.symmetric(horizontal: 10,),
      //                 border: InputBorder.none,
      //                 hintText: "type...",
      //                 hintStyle: TextStyle(color: greythemecolor)

      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        surfaceTintColor: whitethemecolor,
        backgroundColor: whitethemecolor,
        title: Text(
          widget.chatCategorieslist.title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: greythemecolor),
          ),
        ],
      ),
      body: FadeInLeft(
        child: Column(
          children: [
            20.kh,

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 30,
                              color: greythemecolor,
                            ),
                          ),
                          5.kw,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: context.screenHeight * 0.14,

                                width: context.screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: greythemecolor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: whitethemecolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hello Admin,"),
                                      Text(
                                        "When are you available for a plumbing",
                                      ),
                                      Row(
                                        children: [
                                          Text("job?"),
                                          Spacer(),
                                          Icon(
                                            Icons.done,
                                            color: redthemecolor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "1 min ago",
                                style: TextStyle(color: greythemecolor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      10.kh,

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: context.screenHeight * 0.1,

                                width: context.screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),

                                  color: themeprimarycolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hi this week's schedule is packed.",
                                        style: TextStyle(
                                          color: whitethemecolor,
                                        ),
                                      ),
                                      Text(
                                        "How about a date next week?",
                                        style: TextStyle(
                                          color: whitethemecolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "1 day ago",
                                style: TextStyle(color: greythemecolor),
                              ),
                            ],
                          ),
                          5.kw,
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 30,
                              color: greythemecolor,
                            ),
                          ),
                        ],
                      ),
                      10.kh,

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 30,
                              color: greythemecolor,
                            ),
                          ),
                          5.kw,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: context.screenHeight * 0.14,

                                width: context.screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: greythemecolor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: whitethemecolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Yeah Sure!"),
                                      Text(
                                        "Let me know if you are fine with tuesday.",
                                      ),
                                      Row(
                                        children: [
                                          Spacer(),
                                          Icon(
                                            Icons.done,
                                            color: redthemecolor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "1 day ago",
                                style: TextStyle(color: greythemecolor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      10.kh,

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: context.screenHeight * 0.12,
                                width: context.screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  color: Colors.deepOrange.shade100,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Schedule.docx"),
                                      Text(
                                        "487 KB",
                                        style: TextStyle(
                                          color: themeprimarycolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: context.screenHeight * 0.07,

                                width: context.screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),

                                  color: themeprimarycolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Download",
                                            style: TextStyle(
                                              color: whitethemecolor,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.download,
                                            color: whitethemecolor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "2 min ago",
                                style: TextStyle(color: greythemecolor),
                              ),
                            ],
                          ),
                          5.kw,
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 30,
                              color: greythemecolor,
                            ),
                          ),
                        ],
                      ),
                      10.kh,

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 30,
                              color: greythemecolor,
                            ),
                          ),
                          5.kw,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: context.screenHeight * 0.12,

                                width: context.screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: greythemecolor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: whitethemecolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hello"),

                                      Row(
                                        children: [
                                          Text("Whats this for?"),
                                          Spacer(),
                                          Icon(
                                            Icons.done,
                                            color: redthemecolor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "1 min ago",
                                style: TextStyle(color: greythemecolor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      10.kh,

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: context.screenHeight * 0.08,

                                width: context.screenWidth * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),

                                  color: themeprimarycolor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sorry can we do wednesday?",
                                        style: TextStyle(
                                          color: whitethemecolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "1 min ago",
                                style: TextStyle(color: greythemecolor),
                              ),
                            ],
                          ),
                          5.kw,
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 30,
                              color: greythemecolor,
                            ),
                          ),
                        ],
                      ),
                      10.kh,
                    ],
                  ),
                ),
              ),
            ),
            Container(
           height: context.screenHeight*0.09,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: themeprimarycolor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: themeprimarycolor,
                      size: 24,
                    ),
                  ),
                  10.kw,
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          hintText: "Type your message...",
                          hintStyle: TextStyle(color: greythemecolor),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  10.kw,
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themeprimarycolor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.send, color: Colors.white, size: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
