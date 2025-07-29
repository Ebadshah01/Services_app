import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
       backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        surfaceTintColor: whitethemecolor,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.notifications_active),
        )],
      ),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Terms & Conditions",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              10.kh,
              Text(
                "1. Types data we collect",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              5.kh,
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                style: TextStyle(fontSize: 13, color: greythemecolor),
                maxLines: 5,
              ),
              10.kh,
              Text(
                "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.",
                style: TextStyle(fontSize: 13, color: greythemecolor),
                maxLines: 3,
              ),
              10.kh,
              Text(
                "2. Use of your personal data",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
        
              10.kh,
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.",
                style: TextStyle(fontSize: 13, color: greythemecolor),
                maxLines: 4,
              ),
              10.kh,
              Text("Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                style: TextStyle(fontSize: 13, color: greythemecolor),
                maxLines: 2,
               ),
               10.kh,
                Text(
                "3. Disclosure of your personal data",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
        
              10.kh,
              Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
              style: TextStyle(fontSize: 13, color: greythemecolor),
                maxLines: 6,
              )
              ,10.kh,
              Text("Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. ",
               style: TextStyle(fontSize: 13, color: greythemecolor),
                maxLines: 5,),
                20.kh,
                

              
        
            ],
          ),
        ),
      ),
    );
  }
}