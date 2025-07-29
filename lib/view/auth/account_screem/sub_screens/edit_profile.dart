import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  // Function to pick image from gallery
  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        backgroundColor: whitethemecolor,
        surfaceTintColor: whitethemecolor,
        title: const Text(
          "Your Profile",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_active),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: blackthemecolor,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            _image != null
                                ? FileImage(_image!)
                                : const NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUgKjxMutuRT6xSsVycxZjhcJWiPkHOCbq0A&s",
                                    )
                                    as ImageProvider,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 4,
                      child: GestureDetector(
                        onTap: pickImage,
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              10.kh,
              Container(
                height: context.screenHeight * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greythemecolor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Text(
                        "Ebad Ali",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              10.kh,
              Container(
                height: context.screenHeight * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greythemecolor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Text(
                        "ebadali@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              10.kh,
              Container(
                height: context.screenHeight * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greythemecolor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Contact Number",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Text(
                        "03093125130",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              10.kh,
              Container(
                height: context.screenHeight * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greythemecolor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "City",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Text(
                        "Hyderabad",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              10.kh,
              Container(
                height: context.screenHeight * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greythemecolor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "State",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Text(
                        "Sindh",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              10.kh,
              Container(
                height: context.screenHeight * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: greythemecolor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Zipcode",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Text(
                        "54321",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              10.kh,
              Container(
                height: context.screenHeight * 0.06,
                width: context.screenWidth * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: themeprimarycolor,
                ),
                child: Center(
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: whitethemecolor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
