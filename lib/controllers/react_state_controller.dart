import 'package:api_project/Model/new_res_model.dart';
import 'package:api_project/api/api_service.dart';
import 'package:get/get.dart';

class ReactStateController extends GetxController{
  final api  =APISerivce();

  var news = NewsResModel().obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    getNewsReact() ;
    // TODO: implement onInit
    super.onInit();
  }
  void getNewsReact() async{
    final res = await api.getAllNews();
    news(res);
    isLoading(false);
    print(res);
  }
}