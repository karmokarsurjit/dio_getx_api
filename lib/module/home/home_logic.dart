import 'package:get/get.dart';

import '../../model/post_model.dart';
import '../../services/dio_service.dart';

class HomeLogic extends GetxController {

  RxList<PostModel> posts = RxList();

  //var url = "https://jsonplaceholder.typicode.com/posts";
  var url = 'https://fakestoreapi.com/products';

  getPosts() async {
    var response = await DioService().getMethod(url);

    if (response.statusCode == 200) {
      response.data.forEach(
              (element) {
            posts.add(PostModel.fromJson(element));
          }
      );
    }
  }



  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
