import 'package:get/get.dart';

import '../controllers/outlet_controller.dart';

class OutletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OutletController>(
      () => OutletController(),
    );
  }
}
