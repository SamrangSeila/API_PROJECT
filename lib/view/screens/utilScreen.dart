import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UtilScreen extends StatelessWidget {
  const UtilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('util Sreen'),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              // show message in dialog
              Get.defaultDialog(
                title: 'util screen',
                middleText: 'middle text',
                textConfirm: 'Confirm',
                onConfirm: () {
                  print('confirm');
                },
                textCancel: 'Cancel',
                onCancel: (){
                  print('cancel');
                }
              );
            },
            child:Text('show dialog')),
            ElevatedButton(onPressed: (){
              Get.snackbar('Snackbar', 'this is a snackar',
              snackPosition: SnackPosition.TOP,
              snackStyle: SnackStyle.FLOATING,
              backgroundColor:Colors.black,
              colorText: Colors.white,
              );
            }, child: Text('show snackbar')),
            ElevatedButton(onPressed: (){
              Get.bottomSheet(Container(
                height:200,
                // height:Get.height,
                color:Colors.blue,
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    )
                  ],
                ),
              ));
            }, child: Text('show bottom sheet')),
      ]),
    );
  }
}
