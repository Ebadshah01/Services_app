// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';

class JobCategories {
  final String title;
  final String category;
  final String applicant;
  final String price;
  final String status;
  final Color color;
  final String review;

  JobCategories({
    required this.title,
    required this.category,
    required this.applicant,
    required this.price,
    required this.status,
    required this.color,
    required this.review,
  });
}

final List<JobCategories> jobCategorieslist = [
  JobCategories(
    title: "Looking for a Graphic Designer to Revamp my ",
    category: "Creative Services",
    applicant: "31 Applicant",
    price: "\$14.49",
    status: "Status:Active",
    color: greenthemecolor,
    review:
        "I'm in search of a talented graphic designer to revamp my merchandise. The ideal candidate will have a keen eye for modern design trends and experience in creating eye-catching visuals that resonate with a broad audience. Your creativity will help transform my existing merch line, ensuring it stands out and attracts attention. If you have a passion for design and a portfolio that showcases your ability to bring fresh ideas to life, I'd love to hear from you!",
  ),
  JobCategories(
    title: "Looking for a Graphic Designer to Revamp my ",
    category: "Creative Services",
    applicant: "31 Applicant",
    price: "\$15.49",
    status: "Status:Booked",
    color: yellowthemecolor,
    review:
        "I'm in search of a talented graphic designer to revamp my merchandise. The ideal candidate will have a keen eye for modern design trends and experience in creating eye-catching visuals that resonate with a broad audience. Your creativity will help transform my existing merch line, ensuring it stands out and attracts attention. If you have a passion for design and a portfolio that showcases your ability to bring fresh ideas to life, I'd love to hear from you!",
  ),
  JobCategories(
    title: "Looking for a Graphic Designer to Revamp my ",
    category: "Creative Services",
    applicant: "31 Applicant",
    price: "\$10.49",
    status: "Status:Completed",
    color: redthemecolor,
    review:
        "I'm in search of a talented graphic designer to revamp my merchandise. The ideal candidate will have a keen eye for modern design trends and experience in creating eye-catching visuals that resonate with a broad audience. Your creativity will help transform my existing merch line, ensuring it stands out and attracts attention. If you have a passion for design and a portfolio that showcases your ability to bring fresh ideas to life, I'd love to hear from you!",
  ),
];

class JobList extends StatefulWidget {
  const JobList({super.key});

  @override
  State<JobList> createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: jobCategorieslist.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whitethemecolor,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1),
                  color: blackthemecolor.withOpacity(0.1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobCategorieslist[index].title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  10.kh,
                  Row(
                    children: [
                      Text("Category: ", style: TextStyle(fontSize: 12)),
                      Text(
                        jobCategorieslist[index].category,
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Text(
                        jobCategorieslist[index].applicant,
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                    ],
                  ),
                  10.kh,
                  Text(
                    jobCategorieslist[index].review,
                    style: TextStyle(fontSize: 12, color: greythemecolor),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  10.kh,
                  Row(
                    children: [
                      /// Status
                      Expanded(
                        child: Text(
                          jobCategorieslist[index].status,
                          style: TextStyle(
                            fontSize: 12,
                            color: jobCategorieslist[index].color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      /// Price
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          jobCategorieslist[index].price,
                          style: TextStyle(
                            fontSize: 12,
                            color: greenthemecolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      /// View Applicants Button
                      Container(
                        height: context.screenHeight*0.035,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: greenthemecolor,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "View Applicants",
                              style: TextStyle(
                                fontSize: 11,
                                color: whitethemecolor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_forward_ios, size: 13, color: whitethemecolor),
                          ],
                        ),
                      ),
                    ],
                  ),
                  5.kh,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
