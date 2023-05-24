import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body:Column(children: [
        ElevatedButton(onPressed: (){

          // get back by using simple 
          // Navigator.pop(context);

          /// get back by usinh GetX controller
          Get.back();
        }, child: const Text('Back')),
         Center(child: Text('Message: ${Get.arguments}'))
        
      ]),
    );
  }
}