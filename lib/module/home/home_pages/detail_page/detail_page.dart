import 'package:dio_getx_api/module/home/home_logic.dart';
import 'package:dio_getx_api/module/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends HomePage implements GetView<HomeLogic> {

 // final HomeLogic? controller = Get.find<HomeLogic>();
  final int index;
  const DetailPage(this.index, {Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
      appBar: AppBar( title: const Text("Details Page")),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(controller.posts[index].title),

          ],
        ),
      ),
    );
  }
}
