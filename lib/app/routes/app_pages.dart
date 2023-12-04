import 'package:get/get.dart';

import '../modules/cabhome/bindings/cabhome_binding.dart';
import '../modules/cabhome/views/cabhome_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CABHOME,
      page: () => const CabhomeView(),
      binding: CabhomeBinding(),
    ),
  ];
}
