import 'package:dio_getx_api/module/home/home_logic.dart';
import 'package:dio_getx_api/module/home/home_pages/detail_page/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';

//import '../../../services/dio_service.dart';

class HomePageMobilePortrait extends GetView<HomeLogic> {
  final SizingInformation? sizingInformation;

  @override
  HomeLogic get controller => super.controller;

  const HomePageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    //DioService().postMethod('https://fakestoreapi.com/auth/login');
    return Scaffold(
      backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
      appBar: AppBar(
        title: const Text("DIO_GETX_API"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Obx(
          () =>
          //controller.isLoading.value
          //     ? Center(
          //         child: SizedBox(
          //           child:
          //               Lottie.asset("assets/a.json", height: 100, width: 100),
          //         ),
          //       )
          //     : RefreshIndicator(
          //         color: Colors.red,
          //         backgroundColor: Colors.blue,
          //         onRefresh: () {
          //           return controller.getPosts();
          //         },
          //         child:
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: controller.posts.length,
                    itemBuilder: (context, index) {
                      return MaterialButton(
                        onPressed: () { Get.to(()=>DetailPage(index)); },
                        child: Card(
                          child: ListTile(
                            title:
                                //Text(controller.posts.length.toString()),
                                Text(controller.posts[index].title),
                            subtitle: Text(
                              controller.posts[index].body,textAlign: TextAlign.start,
                              style: const TextStyle(fontWeight: FontWeight.w300),
                            ),
                            leading: SizedBox(
                              child: Text(
                                controller.posts[index].id.toString(),
                                style:
                                    const TextStyle(fontWeight: FontWeight.w300),
                              ),
                              // Image.network(
                              //   controller.posts[index].image,
                              //   width: 150,
                              // ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ),
      //),
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
