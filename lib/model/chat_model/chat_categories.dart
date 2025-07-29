import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/chat_screen/sub_screen/message_screen.dart';

class ChatCategories {
  final String imglink;
  final String title;
  final Color readcolor;
  final String subtitle;

  ChatCategories({
    required this.imglink,
    required this.title,
    required this.readcolor,
    required this.subtitle,
  });
}

final List<ChatCategories> chatCategorieslist = [
  ChatCategories(
    imglink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRicpr9J8IkOVQYRsQ6iX8nrLVzU1XwAyeD5w&s",
    title: "Ali Vendor",
    readcolor: greythemecolor,
    subtitle: "Let's figure out another date",
  ),
  ChatCategories(
    imglink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFsH7EaCdJPufHWj9BG1xcS13R2abwtkKJw&s",
    title: "Abbas Vendor",
    readcolor: bluethemecolor,
    subtitle: "Let's figure out another date",
  ),
  ChatCategories(
    imglink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWffk_thGn-Fmvn7uph2yGyrc-RG9cknUFlw&s",
    title: "Hamza",
    readcolor: greythemecolor,
    subtitle: "Let's figure out another date",
  ),
];

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: chatCategorieslist.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => MessageScreen(
                        chatCategorieslist: chatCategorieslist[index],
                      ),
                ),
              );
            },
            child: Container(
              height: context.screenHeight * 0.1,
              width: double.infinity,

              color: whitethemecolor,

              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: themeprimarycolor,
                    backgroundImage: NetworkImage(chatCategorieslist[index].imglink),
                  ),
                  10.kw,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatCategorieslist[index].title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      3.kh,
                      Row(
                        children: [
                          Text("You:", style: TextStyle(fontSize: 12)),
                          5.kw,
                          Text(
                            chatCategorieslist[index].subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: greythemecolor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "10:20",
                        style: TextStyle(fontSize: 12, color: greythemecolor),
                      ),
                      Icon(
                        Icons.done_all,
                        color: chatCategorieslist[index].readcolor,
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
