import 'package:get/get.dart';

import '../../model/post_model.dart';
import '../../services/dio_service.dart';

class HomeLogic extends GetxController {

  RxList<PostModel> posts = RxList();
  //RxBool isLoading = false.obs;
  var url = "https://jsonplaceholder.typicode.com/posts";
  //var url = 'https://fakestoreapi.com/products';

  getPosts() async {
    //isLoading = true.obs;
    var response = await DioService().getMethod(url);

    if (response.statusCode == 200) {
      //isLoading = false.obs;
      response.data.forEach(
              (element) {
                //print(element);
            posts.add(PostModel.fromJson(element));
          }
      );
    }
    print(posts.length);
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
