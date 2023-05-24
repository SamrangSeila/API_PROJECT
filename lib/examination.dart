import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    List list = List.empty();
    List li = [1, 3, 4, 5, 6];
    for (int index = 0; index < li.length; index++) {
      debugPrint("index  $index = ${li[index]}");
    }
    for (dynamic item in li) {
      debugPrint("items = $item");
    }

    li.forEach((element) => debugPrint("element= $element"));

    List<String> fruit = ["apple", "orange"];
    fruit.add("ចេក");
    fruit.add("grap");
    print(fruit);

    List<String> reFruid = fruit.reversed.toList();
    print(reFruid);

    fruit.sort((a, b) => a.compareTo(b));
    print("sort z-a $fruit");

    //bebugPrint can be use to show like print but it can not ennoyed to interface;

    //for search
    List<String> fount1 = fruit.where((element) => element == "apple").toList();
    print(fount1);

    List<String> fount2 =
        fruit.where((element) => element.startsWith("apple")).toList();
    print(fount2);

    List<String> fount3 =
        fruit.where((element) => element.contains("apple")).toList();
    print(fount3);

    List<String> fount4 = fruit
        .where(
            (element) => element.toLowerCase().contains("apple".toLowerCase()))
        .toList();
    print(fount4);

    List<int> number4 = [1, 4, 56, 6, 6];
    print(number4);
    List<String> numerics = number4.map((e) => "number:$e").toList();

    Map map1 = Map();
    Map map2 = {};
    Map map3 = {1: false, "Hello": 2, Text("hello"): 5.5};
    print(map3[1]);
    print(map3["Hello"]);

    Map<String, dynamic> json = {"id": 1, "name": "seila"};
    print(json);
    print(json["name"]);

    
    return const Scaffold();
  }
}
