import 'package:flutter/material.dart';
import 'package:services_app/model/servies_categories/sub_screen/services_screen.dart';
import 'package:services_app/themecolors/color.dart';

class ServiceCategory {
  final String title;
  final String imglink;
  final List<String> category;
  final List<String> name;
  final List<String> image;
  final List<String> service;
  final List<String> price;

  ServiceCategory({
    required this.title,
    required this.imglink,
    required this.category,
    required this.name,
    required this.image,
    required this.service,
    required this.price,
  });
}

// Sample data
final List<ServiceCategory> serviceCategories = [
  ServiceCategory(
    title: "Home Services",
    category: ["Cleanig", "Maintainance", "Renovation"],
    imglink: "assets/Vector.png",

    name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    title: "Auto Services",
    category: ["Repair", "Maintainance", "Detailing"],
    imglink: "assets/Vector (1).png",

    name: ["Car Wash","Car Detailing"],
    image: [ "assets/image 5.png",
      "assets/car wash.jpeg",
    ],
    service: ["Auto Service"],
    price: ["15.50\$","12.50\$ "],
  ),
  ServiceCategory(
    title: "Gardening & Landscaping",
    category: ["Lawn Care", "Planting", "Landscaping"],
    imglink: "assets/Group.png",
    name: ["landscapping"
    ,"Planting"
    ],

    image: [ "assets/mobile repair.jpeg",
      "assets/Mobile images.jpeg",],
    service: ["Home Services","Home Services"],
    price: ["15.50\$",
    "17.99\$"],
  ),
  ServiceCategory(
    title: "Personal Services",
    category: ["Cleanig", "Maintainance", "Renovation"],

    imglink: "assets/Vector (2).png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    title: "Technology & Electronics",
    category: ["Cleanig", "Maintainance", "Renovation"],

    imglink: "assets/Vector (3).png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    title: "Event",
    category: ["Cleanig", "Maintainance", "Renovation"],
    imglink: "assets/event_svgrepo.com.png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    title: "Education & Tutoring",
    category: ["Cleanig", "Maintainance", "Renovation"],

    imglink:
        "assets/education-cap-student-graduation-university_svgrepo.com.png",
         name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    title: "Health & Wellness",
    category: ["Cleanig", "Maintainance", "Renovation"],

    imglink: "assets/fitness-pictogram-1_svgrepo.com.png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    category: ["Cleanig", "Maintainance", "Renovation"],
    title: "Moving & Delivery",

    imglink: "assets/Group (1).png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),

  ServiceCategory(
    title: "Creative Services",
    category: ["Cleanig", "Maintainance", "Renovation"],

    imglink: "assets/photography_svgrepo.com.png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    title: "Finacial & Legal Services",
    category: ["Cleanig", "Maintainance", "Renovation"],

    imglink: "assets/legal-issue_svgrepo.com.png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
  ServiceCategory(
    title: "Other",

    category: ["Cleanig", "Maintainance", "Renovation"],
    imglink: "assets/Vector (2).png",
     name: [
      "Home Renovation",
      "abc"],
    image: [
    "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
    ],
    service: ["Home Service"],
    price: [
      "20.20\$",
      "16.50\$",
    ],
  ),
];

class CategoryGrid extends StatelessWidget {
  final int? limit;
  const CategoryGrid({super.key, this.limit});

  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    final displayList =
        limit != null
            ? serviceCategories.take(limit!).toList()
            : serviceCategories;

    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      itemCount: displayList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.4,
      ),
      itemBuilder: (context, index) {
        final category = displayList[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => ServicesScreen(
                      serviceCategories: serviceCategories[index],
                    ),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: whitethemecolor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: greythemecolor,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(category.imglink, height: 30),

                Text(
                  category.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
