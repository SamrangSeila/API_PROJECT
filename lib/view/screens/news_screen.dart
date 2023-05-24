import 'package:api_project/controllers/news_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({Key? key}) : super(key: key);
  // final controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: GetBuilder<NewsController>(
        init: NewsController(),
        builder: (controller) {
          if (controller.isLoading)
            return const Center(
              child: CircularProgressIndicator(),
            );
          return RefreshIndicator(
            onRefresh: () async{
              controller.getNews();
            },
            child: ListView.builder(
                itemCount: controller.news.articles!.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(children: [
                      controller.news.articles![index].urlToImage == null ? SizedBox():Image.network(controller.news.articles![index].urlToImage! ),
                      Text(controller.news.articles![index].title ?? ""),
                      Text(controller.news.articles![index].description ?? ""),
                      Text(controller.news.articles![index].author ?? "")
                    ]),
                  );
                }),
          );
        },
      ),
    );
  }
}
