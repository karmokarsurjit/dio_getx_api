import 'package:dio/dio.dart';
//import 'package:dio_getx_api/module/home/home_logic.dart';
import 'package:flutter/foundation.dart';
//import 'package:get/get.dart';

class DioService {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();
    return await dio
        .get(
      url,
      options: Options(responseType: ResponseType.json, method: "GET",),
    )
        .then((response) {
      if (kDebugMode) {
        print("*************");
      }
      //log(response.toString());
      // if (kDebugMode) {
      //   print(response);
      // }
      //HomeLogic.isLoading = false.obs;
      return response;
    });
  }

  Future<dynamic> postMethod(path) async {
    return await Dio()
        .post(
      path,
      data: {"username": "donero",
        "password": "ewedon"},
      options: Options(
        method: "POST",
        responseType: ResponseType.json,
      ),
    )
        .then((response) {
      if (kDebugMode) {
        print("-----------------");
        print(response);
      }
      return response;
    });
  }
}
