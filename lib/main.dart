import 'dart:convert';

import 'package:api_project/Model/new_res_model.dart';
import 'package:api_project/view/screens/detailscreen.dart';
import 'package:api_project/view/screens/homeScreen.dart';

import 'package:api_project/view/screens/news_screen.dart';
import 'package:api_project/view/screens/reactiveScreen.dart';
import 'package:api_project/view/screens/statemixinscreen.dart';
import 'package:api_project/view/screens/unknownpage.dart';
import 'package:api_project/view/screens/utilScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'examination.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Exam(),
      initialRoute: '/util',
      unknownRoute: GetPage(name: '/notfound', page: ()=> UnknowPage()),
      getPages: [
        GetPage(name: '/simplestate', page:() => NewsScreen()),
        GetPage(name: '/reactivestate', page: () => ReactiveScreen()),
        GetPage(name:'/mixinstate',page:()=> StateMixInScreen()),
        GetPage(name:'/home',page:()=> HomeScreen()),
        GetPage(name:'/detail',page:()=> DetailScreen(),
        
        // transaction we use for making animation
        transition: Transition.fadeIn
        ),
        GetPage(name: '/util', page:()=> UtilScreen())
      ],
    );
  }
}


