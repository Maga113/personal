// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:the_new_york_times/models/home_data.dart';
import 'package:the_new_york_times/services/api_client.dart';
import '../screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewYorkTimes',
      theme: ThemeData(),
      routes: {
        '/main_screen': (context) => HomeScreen(),
      },
      initialRoute: '/main_screen',
    );
  }
}
