import 'package:flutter/material.dart';
import 'package:services_app/model/applicant_list/applicant.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/post&job_screen/sub_screen/air_condition.dart';

class JobDetail extends StatefulWidget {
  const JobDetail({super.key});

  @override
  State<JobDetail> createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: whitethemecolor,
        appBar: AppBar(
          backgroundColor: whitethemecolor,
          surfaceTintColor: whitethemecolor,
          title: Text(
            "Air Conditioning Service",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: blackthemecolor,
            ),
          ),
          bottom: TabBar(
             labelColor: blackthemecolor,
             indicatorColor: themeprimarycolor,
           
            tabs: [
            
            Tab(text: "Job Details"),
            Tab(text: "Applicants"),

          ],),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TabBarView(children:[
            AirConditionServices(),
            ApplicantList(),
          ]
          
          ),
        ),
      ),
    );
  }
}

