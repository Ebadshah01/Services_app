import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/servies_categories/servies_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/notification_screen/notificatioon_screen.dart';

class ServicesScreen extends StatefulWidget {
  final ServiceCategory serviceCategories;
  const ServicesScreen({super.key, required this.serviceCategories});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              child: Icon(Icons.notifications_active),
            ),
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
                Image(image: AssetImage(widget.serviceCategories.imglink)),
                10.kw,
                Text(
                  widget.serviceCategories.title,
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
                itemCount: widget.serviceCategories.category.length,
                itemBuilder: (context, index) {
                  final subCat = widget.serviceCategories.category[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        height: context.screenHeight * 0.055,
                       
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              currentIndex == index
                                  ? Colors.orange.shade300
                                  : Colors.orange.shade100,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              subCat,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
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
      
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Container(
                    height: context.screenHeight * 0.05,
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
                ),
                10.kh,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
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
                ),
                10.kh,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: widget.serviceCategories.image.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: whitethemecolor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              // ignore: deprecated_member_use
                              color: blackthemecolor.withOpacity(0.1),
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: Image.asset(
                                widget.serviceCategories.image[index],
                                height: context.screenHeight * 0.15,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.serviceCategories.name[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Category: ",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: greythemecolor,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          widget
                                                      .serviceCategories
                                                      .category
                                                      .length >
                                                  index
                                              ? widget
                                                  .serviceCategories
                                                  .category[index]
                                              : "", // ✅ Safe access
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: greythemecolor,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  10.kh,
                                  Row(
                                    children: [
                                      Text(
                                        widget
                                                    .serviceCategories
                                                    .price
                                                    .length >
                                                index
                                            ? widget
                                                .serviceCategories
                                                .price[index]
                                            : "", // ✅ Safe access
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: greenthemecolor,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: context.screenHeight * 0.03,
                                        width: context.screenWidth * 0.22,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          color: greenthemecolor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Book Now",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: whitethemecolor,
                                              ),
                                            ),
                                            4.kw,
                                            Icon(
                                              Icons.arrow_forward_rounded,
                                              color: whitethemecolor,
                                              size: 13,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
