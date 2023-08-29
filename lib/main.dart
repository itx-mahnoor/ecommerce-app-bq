import 'package:ecommerce_app/screens/category.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/visual_search_2.dart';
import 'package:ecommerce_app/screens/sign_up.dart';
import 'package:ecommerce_app/screens/login.dart';
import 'package:ecommerce_app/screens/visual_search.dart';
import 'package:ecommerce_app/screens/main_page.dart';
//import 'package:ecommerce_app/screens/main_page2.dart';
//import 'package:ecommerce_app/screens/category.dart';
import 'package:ecommerce_app/screens/women_tops.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: ThemeData(
        primaryColor: Color(0xff1a1818),
        // ignore: deprecated_member_use
        accentColor: Color(0xff1a1818),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => SignUpScreen(),
        '/login': (ctx) => LoginScreen(),
        '/visual_search': (ctx) => VisualSearch(),
        '/visual_search_2': (ctx) => VisualSearch2Screen(
              imagePath: '',
            ),
        '/main_page': (ctx) => MainPage(), // Add MainPage route
        '/main_page2': (ctx) => MainPage(),
        '/category': (ctx) => CategoryScreen(),
        '/women_tops': (ctx) => WomenTopsScreen(),
      },
    );
  }
}
