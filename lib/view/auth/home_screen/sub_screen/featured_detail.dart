import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/featured_categories/featured_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/home_screen/sub_screen/featured_sub_screen/book_job.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';

class FeaturedDetailScreen extends StatefulWidget {
  final FeaturedCategories featuredCategorieslist;

  const FeaturedDetailScreen({super.key, required this.featuredCategorieslist});

  @override
  State<FeaturedDetailScreen> createState() => _FeaturedDetailScreenState();
}

class _FeaturedDetailScreenState extends State<FeaturedDetailScreen> {
  late final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: whitethemecolor,
        appBar: AppBar(
          backgroundColor: whitethemecolor,
          surfaceTintColor: whitethemecolor,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  );
                },
                child: Icon(Icons.notifications_on),
              ),
            ),
          ],
        ),
        body: FadeInLeft(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.screenHeight * 0.25,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: widget.featuredCategorieslist.imageList.length,
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  widget.featuredCategorieslist.imageList[index],
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              
                            ],
                          );
                        },
                      ),
                    ),
                    10.kh,
                    Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  widget
                                      .featuredCategorieslist
                                      .imageList
                                      .length,
                                  (index) => AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    margin: EdgeInsets.symmetric(horizontal: 4),
                                    width: currentIndex == index ? 8 : 8 ,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color:
                                          currentIndex == index
                                              ? blackthemecolor
                                              : Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
          
                    10.kh,
                    // 📝 Title + Rating
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.featuredCategorieslist.title,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(Icons.star, color: amberthemecolor),
                        Text("4.5/5"),
                      ],
                    ),
                    10.kh,
                    // 🧭 TabBar
                    TabBar(
                      labelColor: themeprimarycolor,
                      indicatorColor: themeprimarycolor,
                      unselectedLabelColor: greythemecolor,
                      tabs: [Tab(text: "Product Overview"), Tab(text: "Reviews")],
                    ),
                  ],
                ),
              ),
          
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.kh,
                          Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          5.kh,
                          Text(
                            widget.featuredCategorieslist.description,
                            style: TextStyle(fontSize: 13),
                          ),
                          10.kh,
                          Text(
                            "Cost",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.featuredCategorieslist.price,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: themeprimarycolor,
                            ),
                          ),
                          10.kh,
                          Text(
                            "Vendor Location",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          5.kh,
                          Text(
                            widget.featuredCategorieslist.location,
                            style: TextStyle(fontSize: 13),
                          ),
                          20.kh,
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => BookJob(
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
                                    Icon(
                                      Icons.arrow_forward,
                                      color: whitethemecolor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          20.kh,
                        ],
                      ),
                    ),
          
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
          
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: featuredCategorieslist.take(1).length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
          
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: NetworkImage(
                                            widget.featuredCategorieslist.imglink,
                                          ),
                                        ),
                                        10.kw,
          
                                        Text(
                                          widget.featuredCategorieslist.namecat,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(Icons.star, color: amberthemecolor),
                                        Text(
                                          widget.featuredCategorieslist.rating,
                                        ),
                                      ],
                                    ),
                                  ),
          
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      widget.featuredCategorieslist.review,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: greythemecolor,
                                      ),
                                      maxLines: 5,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    child: SizedBox(
                                      height: context.screenHeight * 0.08,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            widget
                                                .featuredCategorieslist
                                                .imageList
                                                .length,
                                        itemBuilder: (context, imgIndex) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                8,
                                              ),
                                              child: Image.asset(
                                                widget
                                                    .featuredCategorieslist
                                                    .imageList[imgIndex],
                                                width: context.screenWidth * 0.25,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
