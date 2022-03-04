import 'package:get/get.dart';

import '../modules/catalog/bindings/catalog_binding.dart';
import '../modules/catalog/views/catalog_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/outlet/bindings/outlet_binding.dart';
import '../modules/outlet/views/outlet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.leftToRightWithFade,
      opaque: false,
      showCupertinoParallax: true,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.leftToRightWithFade,
      opaque: false,
      showCupertinoParallax: true,
    ),
    GetPage(
      name: _Paths.CATALOG,
      page: () => CatalogView(),
      binding: CatalogBinding(),
      transition: Transition.leftToRightWithFade,
      opaque: false,
      showCupertinoParallax: true,
    ),
    GetPage(
      name: _Paths.OUTLET,
      page: () => OutletView(),
      binding: OutletBinding(),
    ),
  ];
}
