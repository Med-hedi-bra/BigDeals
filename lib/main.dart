import 'package:big_deals/view/Contactus/ContactUs.dart';
import 'package:big_deals/view/Home/Home.dart';
import 'package:big_deals/view/Setting/settings.dart';
import 'package:big_deals/view/Welcome/welcome_screen.dart';
import 'package:big_deals/view/colors.dart';
import 'package:big_deals/view/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'view/Main/main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Big Deals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scrollbarTheme:   ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(AppColors.blue3),
        )
      ),
      initialRoute: "/",
      routes: {
        "/" : (context)=> const  WelcomeScreen(),
        "/Settings" : (context)=> const Settings(),
        "/Home":(context)=> const Home() ,

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
