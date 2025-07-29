import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/model/chat_model/chat_categories.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/post&job_screen/sub_screen/profile_detail.dart';

class JobApplicant {
  final String title;
  final String name;
  final String price;
  final String date;
  final Color color;
  final String status;

  JobApplicant({
    required this.title,
    required this.name,
    required this.price,
    required this.date,
    required this.color,
    required this.status,
  });
}

final List<JobApplicant> jobApplicantlist = [
  JobApplicant(
    title: "I will perform Air Conditioning Service",
    name: "Ali AC Systems",
    price: "\$12.49",
    date: "26-06-2025",
    color: greenthemecolor,
    status: "View Details",
  ),
  JobApplicant(
    title: "I will perform Air Conditioning Service",
    name: "Hamza AC Systems",
    price: "\$15.49",
    date: "20-07-25",
    color: greenthemecolor,
    status: "View Details",
  ),
];

class ApplicantList extends StatelessWidget {
  const ApplicantList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: jobApplicantlist.length,
      itemBuilder: (context, index) {
        final applicant = jobApplicantlist[index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: whitethemecolor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: blackthemecolor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title
                  Text(
                    applicant.title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  10.kh,

                  /// Name & Availability
                  Row(
                    children: [
                      Text("Provider: ", style: TextStyle(fontSize: 12)),
                      Text(applicant.name, style: TextStyle(fontSize: 12)),
                      Spacer(),
                      Text("Availability: ", style: TextStyle(fontSize: 12, color: greythemecolor)),
                      Text(applicant.date, style: TextStyle(fontSize: 12, color: greythemecolor)),
                    ],
                  ),
                  10.kh,

                  /// Description
                  Text(
                    "I'm in search of a talented graphic designer to revamp my merchandise. The ideal candidate will have a keen eye for modern design trends and experience in creating eye-catchin",
                    style: TextStyle(fontSize: 12, color: greythemecolor),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  10.kh,

                  /// Bottom Row: Quote Price + Button
                  Row(
                    children: [
                      /// Price
                      Text(
                        "Quote Price: ",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: greenthemecolor),
                      ),
                      Text(
                        applicant.price,
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: greenthemecolor),
                      ),
                      Spacer(),

                      /// View Details Button
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileDetail(
                                jobApplicantlist: applicant,
                                chatCategorieslist: chatCategorieslist[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: context.screenHeight * 0.045,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: applicant.color,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Text(
                                applicant.status,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: whitethemecolor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.arrow_forward_ios, size: 13, color: whitethemecolor),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
