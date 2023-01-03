import 'package:cappuccino/pages/home_page.dart';
import 'package:cappuccino/pages/login_page.dart';
import 'package:cappuccino/utils/Routs.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) =>  home_page(),
        MyRoutes.homepage: (context) =>  home_page(),
        MyRoutes.Loginpage: (context) =>  LoginPage(),
      },
    );
  }
}
