// ignore: unused_import
import 'package:clgapp/pages/food/Recommanded_food_page.dart';
// ignore: unused_import
import 'package:clgapp/pages/food/popular_food_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/main_food_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainFoodPage(),
      //home: PopularFoodDetail(),
      // home: RecommendedFoodDetail(),
    );
  }
}
