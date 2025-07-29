import 'package:flutter/material.dart';
import 'package:services_app/model/featured_categories/featured_categories.dart';
import 'package:services_app/model/job_categories/job_categories.dart';
import 'package:services_app/themecolors/color.dart';

// Dummy FeaturedGrid widget (aap apna original widget yahaan use karein)

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitethemecolor,
      appBar: AppBar(
        title: Text('Your Bookings', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.black54,
            tabs: const [
              Tab(text: 'Jobs by You'),
              Tab(text: 'Jobs by Service Providers'),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TabBarView(
          controller: _tabController,
          children: [
            // Tab 1: Blank Screen
           
            JobList(),
            // Tab 2: FeaturedGrid widget
           Padding(
             padding: const EdgeInsets.only(left: 2,right: 2,top: 10),
             child: SingleChildScrollView(child: FeaturedGrid(limit: 6,  )),
           )
          ],
        ),
      ),
    );
  }
}
