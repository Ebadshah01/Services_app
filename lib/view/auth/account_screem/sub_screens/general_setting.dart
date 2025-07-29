import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';

class GeneralSetting extends StatefulWidget {
  const GeneralSetting({super.key});

  @override
  State<GeneralSetting> createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
   bool isSwitched = false;
   bool isFaceSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        actions: [Icon(Icons.notifications_active)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("General Settings",style: 
            TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            20.kh,
             Row(
               children: [
                Text("Notifications"),
                Spacer(),
                 Switch(
                        value: isFaceSwitched,
                        onChanged: (value) {
                          setState(() {
                            isFaceSwitched = value;
                          });
                        },
                          activeColor: whitethemecolor,
                        inactiveThumbColor: whitethemecolor,
                        inactiveTrackColor: greythemecolor,
                        activeTrackColor: greenthemecolor,
                      ),
               ],
             ),
             10.kh,
               Row(
               children: [
                Text("Allow location"),
                Spacer(),
                 Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                           activeColor: whitethemecolor,
                        inactiveThumbColor: whitethemecolor,
                        inactiveTrackColor: greythemecolor,
                        activeTrackColor: greenthemecolor,
                      ),
               ],
             )
          ],
        ),
      ),
    );
  }
}