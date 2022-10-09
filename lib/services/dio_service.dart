import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioService {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();
    return await dio
        .get(
          url,
          options: Options(responseType: ResponseType.json, method: "GET"),
        )
        .then((response){
          if (kDebugMode) {
            print("*************");
          }
          //log(response.toString());
          if (kDebugMode) {
            print(response);
          }
          return response;

    });
  }
}
