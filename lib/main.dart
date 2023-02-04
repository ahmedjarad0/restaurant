import 'package:flutter/material.dart';
import 'package:ui_app/screens/app/bottom_navigation_screen.dart';
import 'package:ui_app/screens/app/categories_screen.dart';
import 'package:ui_app/screens/app/drawer/faq_screen.dart';
import 'package:ui_app/screens/app/drawer/favorite_screen.dart';
import 'package:ui_app/screens/app/drawer/frequent_screen.dart';
import 'package:ui_app/screens/app/drawer/tabs/first_tab_screen.dart';
import 'package:ui_app/screens/app/drawer/tabs/second_tab_screen.dart';
import 'package:ui_app/screens/app/home_screen.dart';
import 'package:ui_app/screens/app/second_home_screen.dart';
import 'package:ui_app/screens/app/settings_screen.dart';
import 'package:ui_app/screens/app/user_screen.dart';
import 'package:ui_app/screens/launch_screen.dart';
import 'package:ui_app/screens/login_screen.dart';
import 'package:ui_app/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'launch_screen',
      routes: {
        'launch_screen': (context) => LaunchScreen(),
        'on_boarding_screen': (context) => OnboardingScreen(),
        'login_screen': (context) => LoginScreen(),
        'user_screen': (context) => UserScreen(),
        'categories_screen': (context) => CategoriesScreen(),
        'home_screen': (context) => HomeScreen(),
        'second_home_screen': (context) => SecondHomeScreen(),
        'bottom_navigation_screen' :(context)=> BottomNavigationScreen(),
        'settings_screen' :(context)=> SettingsScreen(),
        'faqs_screen' :(context)=> FaqsScreen(),
        'frequent_screen' :(context)=> FrequentScreen(),
        'favorite_screen' :(context)=> FavoriteScreen(),
        'first_tab_screen' :(context)=> FirstTabScreen(),
        'second_tab_screen' :(context)=> SecondTabScreen(),
      },
    );
  }
}
