import 'package:dio_getx_api/module/home/home_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageMobilePortrait extends GetView<HomeLogic> {
  final SizingInformation? sizingInformation;

  const HomePageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    //DioService().getMethod('https://fakestoreapi.com/products');
    return Scaffold(
      backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
      appBar: AppBar(
        title: const Text("DIO_GETX_API"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Obx(() {
          return ListView.builder(itemCount: controller.posts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(

                    title: Text(controller.posts[index].title),
                    subtitle: Text(
                      controller.posts[index].description,
                      style: const TextStyle(fontWeight: FontWeight.w300),
                    ),
                      leading:SizedBox(
                          width: 100,
                          child: Image.network(controller.posts[index].image,width: 150,)),
                ),
                );
              });
        }),
      ),
    );
  }
}

class HomePageMobileLandscape extends GetView<HomeLogic> {
  final SizingInformation? sizingInformation;

  const HomePageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    return Container();
  }
}
