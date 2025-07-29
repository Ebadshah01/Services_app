import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/category_model/category_model.dart';
import 'package:services_app/model/featured_categories/featured_categories.dart';
import 'package:services_app/themecolors/color.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        surfaceTintColor: whitethemecolor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_active),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                16.kw,
                Icon(Icons.home_filled),
                5.kw,
                Text(
                  "Home Service",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            10.kh,
            SizedBox(
              height: context.screenHeight * 0.045,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemCount: categoryModellist.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                     
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        width: context.screenWidth * 0.3,
        
                        decoration: BoxDecoration(
                          color:
                              currentIndex == index
                                  ? Colors.orange.shade300
                                  : Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            categoryModellist[index].title,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            10.kh,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    height: context.screenHeight * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: greythemecolor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: greythemecolor),
                          10.kw,
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search a service",
                                hintStyle: TextStyle(color: greythemecolor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  10.kh,
                  Row(
                    children: [
                      Text(
                        "Featured",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.filter_alt_sharp, color: orangethemecolor),
                      10.kw,
                      Text(
                        "Fliter",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: orangethemecolor,
                        ),
                      ),
                 
                    ],
                  ),
                  10.kh,
             
              FeaturedGrid(limit: 6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
