import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/bottomnavbar.dart';

class AirConditionServices extends StatefulWidget {
  const AirConditionServices({super.key});

  @override
  State<AirConditionServices> createState() => _AirConditionServicesState();
}

class _AirConditionServicesState extends State<AirConditionServices> {
  bool showMore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      body: FadeInLeft(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: [
              10.kh,
              Container(
                height: context.screenHeight * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/360_F_511929539_hkrzPKGI6pEA8TwUfrwrB0g73FyEaowM.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              10.kh,
              Text(
                "Title",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text("Air Conditioning Service"),
              10.kh,
              Text(
                "Service",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text("Technology & Electronics", style: TextStyle(fontSize: 13)),
              10.kh,
              Text(
                "Status",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text("Active", style: TextStyle(fontSize: 13)),
              10.kh,
              Text(
                "Cost",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text(
                "\$12.49",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: themeprimarycolor,
                ),
              ),
              10.kh,
              Text(
                "Date & Time",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text(
                "24-06-2025 to 28-06-25 | 7:30 PM",
                style: TextStyle(fontSize: 13),
              ),
              
              if (showMore) ...[
                10.kh,
                Text(
                  "City",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text("Hyderabad", style: TextStyle(fontSize: 13)),
                10.kh,
                Text(
                  "State",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text("Sindh", style: TextStyle(fontSize: 13)),
              ],
             
              10.kh,
              Text(
                "Description",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text(
                "LorLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.em",
                style: TextStyle(fontSize: 13),
                maxLines: 7,
              ),
            
              TextButton(
                onPressed: () {
                  setState(() {
                    showMore = !showMore;
                  });
                },
                child: Text(
                  showMore ? "View Less Details" : "View More Details",
                  style: TextStyle(fontSize: 13, color: themeprimarycolor),
                ),
              ),
        
        10.kh,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavbar()),
                        (route) => false,
                      );
                    },
                    child: Container(
                      height: context.screenHeight * 0.05,
                      width: context.screenWidth * 0.4,
        
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red.shade400,
                      ),
                      child: Center(
                        child: Text(
                          "Delete Job",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: whitethemecolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: context.screenHeight * 0.05,
                    width: context.screenWidth * 0.4,
        
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.yellow.shade300,
                    ),
                    child: Center(
                      child: Text(
                        "Pause Applicants",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blackthemecolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              20.kh,
            ],
          ),
        ),
      ),
    );
  }
}
