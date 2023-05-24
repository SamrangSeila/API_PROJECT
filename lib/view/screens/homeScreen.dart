import 'package:api_project/view/screens/detailscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(icon: const Icon((Icons.arrow_back_ios)), onPressed: () {  },),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],
        title:const Text('Route Management'),

        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(onPressed: (){
              // it is route that we use with simple navigator
              // Navigator.push(context,MaterialPageRoute(builder:(context)=>const DetailScreen()));

              // it is route that we use with getX controller   and we have option to back to home
              Get.to(() => DetailScreen());

              // it is route that we use with getX controller and we don't have option to back to hoem
              // Get.off(DetailScreen());

              // it is route that we use with Getx controller and it will delete old history form ui
              // Get.offAll(DetailScreen);

              // getX route use with route getpage in main page
              Get.toNamed('detail',arguments: 'Hello world');
            }, child: const Text('Counter'))
          ],)
          ),
        
    );
  }
}