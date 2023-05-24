import 'dart:ffi';

import 'package:api_project/Model/new_res_model.dart';
import 'package:api_project/api/api_service.dart';
import 'package:get/get.dart';
class StateMixinGetXController extends GetxController with StateMixin<NewsResModel>{

  final api = APISerivce();

  @override
  void onInit() {
        getMixinNews();
    // TODO: implement onInit
    super.onInit();

  }
  void getMixinNews() async{
    change(null, status: RxStatus.loading());
    try{
      final res = await api.getAllNews();
      change(res,status: RxStatus.success());
      // change(res ,status: RxStatus.error("No data was found"));
    }
    catch(e){
      change(null, status: RxStatus.error(e.toString()));
    }
  }
  // void getNewsReact() {}
}