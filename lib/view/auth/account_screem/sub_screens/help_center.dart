import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        surfaceTintColor: whitethemecolor,
        actions: [Icon(Icons.notifications_active)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Help Center",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              10.kh,
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      "Got Something on your mind?",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    5.kh,
                    Text(
                      "Ask our customer service team any query",
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      "by dropping your message below",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
              15.kh,
              SizedBox(
                height: context.screenHeight * 0.1,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ask your query",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: greythemecolor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: themeprimarycolor),
                    ),
                  ),
                ),
              ),
              20.kh,
        
              Center(
                child: Container(
                  height: context.screenHeight * 0.06,
                  width: context.screenWidth * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: themeprimarycolor,
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 17,
                        color: whitethemecolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              20.kh,
              Text("Contact Us On:", style: TextStyle(fontSize: 17)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: context.screenHeight*0.08,
                    width: context.screenWidth*0.14,
                    decoration: BoxDecoration(
                     
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrIrKKJ9pBwe6GhLIBvy6iA_DOio5qgZVN9g&s"),fit: BoxFit.cover),
                    ),
                  ),
                   Container(
                    height: context.screenHeight*0.08,
                    width: context.screenWidth*0.14,
                    decoration: BoxDecoration(
                                           

                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSClbbfGiEBp1F8m8_6-mUdtdyb537zznVT7A&s"),fit: BoxFit.cover),
                    ),
                  ), Container(
                    height: context.screenHeight*0.08,
                    width: context.screenWidth*0.14,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlzqTZwpEIWcIUlKKiA5dfzMKN2rZaqe6xtg&s"),fit: BoxFit.cover),
                    ),
                  ), Container(
                  height: context.screenHeight*0.08,
                    width: context.screenWidth*0.14,
                  
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGPyXF4tm4rhKDx8KOyIeMaWivzd0FUqcKAg&s"),fit: BoxFit.cover),
                    ),
                  ), Container(
                    height: context.screenHeight*0.08,
                    width: context.screenWidth*0.14,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQcAP10b_fOQmVYPKGqaiap7dyBvTOrZ0IsQ&s"),fit: BoxFit.cover),
                    ),
                  ),  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
