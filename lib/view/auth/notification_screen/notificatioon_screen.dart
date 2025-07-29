import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(backgroundColor: whitethemecolor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notification",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            20.kh,
            Container(
              height: context.screenHeight*0.12,
              width: double.infinity,
              decoration: BoxDecoration(color: whitethemecolor,borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                spreadRadius: 2,
                offset: Offset(1,1),
                blurRadius: 10,
                // ignore: deprecated_member_use
                color: blackthemecolor.withOpacity(0.2),
              )]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: themeprimarycolor,
                      size: 30,
                    ),
                    10.kw,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Service Provider has started Journey for ",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "“Air Conditioning Service”",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: themeprimarycolor,
                            ),
                          ),
                          Text(
                            "Track journey Now...",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
