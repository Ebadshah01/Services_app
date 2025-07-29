import 'package:flutter/material.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/account_screem/account_screen.dart';
import 'package:services_app/view/auth/categories_screen/categories_screen.dart';
import 'package:services_app/view/auth/chat_screen/chat_screen.dart';
import 'package:services_app/view/auth/home_screen/home_screen.dart';
import 'package:services_app/view/auth/post&job_screen/post&job_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final PageController _controller = PageController();
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ChatScreen(),
    PostJobScreen(),
    CategoriesScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _controller.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // allow body to go behind navbar for floating effect
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _navIcon(icon: Icons.home, index: 0, label: "Home"),
            _navIcon(icon: Icons.chat_bubble_outline, index: 1, label: "Chat"),
            _floatingMiddleButton(),
            _navIcon(icon: Icons.category_outlined, index: 3, label: "Cats"),
            _navIcon(icon: Icons.person_outline, index: 4, label: "Account"),
          ],
        ),
      ),
    );
  }

  Widget _navIcon({required IconData icon, required int index, required String label}) {
    bool isActive = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isActive ? themeprimarycolor : Colors.grey, size: 26),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: isActive ? themeprimarycolor : Colors.grey,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _floatingMiddleButton() {
    return GestureDetector(
      onTap: () => _onItemTapped(2),
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          color: themeprimarycolor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: themeprimarycolor.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}
