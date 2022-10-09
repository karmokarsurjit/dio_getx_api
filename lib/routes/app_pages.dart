import 'package:dio_getx_api/module/home/home_binding.dart';
import 'package:dio_getx_api/module/home/home_view.dart';
import 'package:dio_getx_api/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final pages = [
    GetPage(name: AppRoutes.HOME, page: () => const HomePage(), bindings: [
      HomeBinding(),
    ]),
  ];
}
