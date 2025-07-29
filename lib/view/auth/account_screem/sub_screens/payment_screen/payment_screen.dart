import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/account_screem/sub_screens/payment_screen/sub_screen/card_info.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        title: Text(
          "Payment Methods",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              constraints: BoxConstraints(minHeight: 60),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: greythemecolor),
              ),

              child: ExpansionTile(
                leading: Icon(Icons.payment_rounded, color: redthemecolor),
                title: Text("Debit / Credit Card"),
                children: [
                  Container(
                    color: whitethemecolor,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Card"),
                          10.kh,
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CardInfo(),
                                ),
                              );
                            },
                            child: Container(
                              height: context.screenHeight * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: greythemecolor,
                                ),
                              ),
                              child: ListTile(
                                leading: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvAVfs8elUWHnN0RoPKaE1gaW5BlWXTru0aA&s",
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  "*** **** **** 4321",
                                  style: TextStyle(fontSize: 13),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.edit, color: Colors.grey),
                                    8.kw,
                                    Icon(Icons.delete, color: Colors.red),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          10.kh,
                          Container(
                            height: context.screenHeight * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: greythemecolor,
                              ),
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTvw10q8UEI9-Pd4QJ5getpNSCZiuvzP0fMw&s",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              title: Text(
                                "*** **** **** 4321",
                                style: TextStyle(fontSize: 13),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.edit, color: Colors.grey),
                                  8.kw,
                                  Icon(Icons.delete, color: Colors.red),
                                ],
                              ),
                            ),
                          ),
                          10.kh,
                          Center(
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: greenthemecolor,
                              ),
                              child: Center(
                                child: Text(
                                  "Add New Card",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: whitethemecolor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.kh,
            Container(
              constraints: BoxConstraints(minHeight: 60),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: greythemecolor),
              ),
              child: ExpansionTile(
                leading: Icon(Icons.houseboat_outlined, color: redthemecolor),
                title: Text("Net Banking"),
              ),
            ),
            10.kh,
            Container(
              constraints: BoxConstraints(minHeight: 60),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: greythemecolor),
              ),
              child: ExpansionTile(
                leading: Icon(Icons.paypal_outlined, color: redthemecolor),
                title: Text("PayPal"),
              ),
            ),
            10.kh,
            Container(
              constraints: BoxConstraints(minHeight: 60),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: greythemecolor),
              ),
              child: ExpansionTile(
                leading: Icon(Icons.apple, color: redthemecolor),
                title: Text("Apple Pay"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
