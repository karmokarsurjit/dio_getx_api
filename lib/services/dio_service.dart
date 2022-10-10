
//import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioService {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();
    return await dio
        .get(
      url,
      options: Options(responseType: ResponseType.json, method: "GET",receiveDataWhenStatusError: true),
    )
        .then((response) {
      if (kDebugMode) {
        print("*************");
      }
      //log(response.toString());
      // if (kDebugMode) {
      //   print(response);
      // }
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
