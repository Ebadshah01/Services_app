import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:services_app/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Services App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
       builder:
          (context, child) => ResponsiveBreakpoints.builder(
            child: BouncingScrollWrapper.builder(context, child!),
            breakpoints: [
              const Breakpoint(start: 0, end: 480, name: MOBILE),
              const Breakpoint(start: 481, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1200, name: DESKTOP),
              const Breakpoint(start: 1201, end: double.infinity, name: '4K'),
            ],
          ),
      home: SplashScreen(),
    );
  }
}