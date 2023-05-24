import 'package:api_project/controllers/state_mixin_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class StateMixInScreen extends GetView<StateMixinGetXController> {
  StateMixInScreen({super.key});
  final con = Get.put(StateMixinGetXController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Mixin '),
      ),
      body: controller.obx(
          (data) => RefreshIndicator(
          
              onRefresh: () async {
                con.getMixinNews();
              },
              child: ListView.builder(
                  itemCount: data?.articles!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          data?.articles![index].urlToImage == null
                              ? const SizedBox()
                              : Image.network(
                                  data!.articles![index].urlToImage!),
                          SizedBox(
                            height: 10,
                          ),
                          Text(data?.articles![index].title ?? ""),
                          Text(data?.articles![index].description ?? "" ?? ""),
                          Text(data?.articles![index].author ?? "")
                        ],
                      ),
                    );
                  })),
          onEmpty: const Center(
            child: Text('No Data'),
          ),
          onError: (error) => Center(
                child: Text(error.toString()),
              )),
    );
  }
}
