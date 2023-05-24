import 'package:api_project/controllers/react_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ReactiveScreen extends StatelessWidget {
   ReactiveScreen({super.key});
  final controller = Get.put(ReactStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Reactive Screen"),
      ),
      body: Obx((){
        if(controller.isLoading.value)
        return const Center(
          child: CircularProgressIndicator(),
        );
        return RefreshIndicator(
          onRefresh: () async{
            controller.getNewsReact();
          },
          child:       ListView.builder(
        itemCount: controller.news.value.articles!.length,
        itemBuilder: (context,index){
          return Container(
            child: Column(
              children: [
              controller.news.value.articles![index].urlToImage== null
              ? const SizedBox()
              :Image.network(controller.news.value.articles![index].urlToImage!),
              SizedBox(
                height:10,
              ),
              Text(controller.news.value.articles![index].title ?? ""),
              Text(controller.news.value.articles![index].description ?? ""),
              Text(controller.news.value.articles![index].author ?? "")
              ],
            ),  
          );
      }
          ));
      }
    ));
  }
}