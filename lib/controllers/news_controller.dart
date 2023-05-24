import 'package:api_project/Model/new_res_model.dart';
import 'package:api_project/api/api_service.dart';
import 'package:get/get.dart';
class NewsController extends GetxController{
  final api = APISerivce();
  var isLoading = true;

  @override
  void onInit() {
    getNews();
    // TODO: implement onInit
    super.onInit();
  }
  var news = NewsResModel();
  void getNews() async{
    isLoading= true;
    final res = await api.getAllNews();
    news=res;
    isLoading=false;
    update();

  }
}