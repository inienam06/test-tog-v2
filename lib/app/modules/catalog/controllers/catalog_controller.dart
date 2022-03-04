import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:tog_v2/app/models/catalogue_model.dart';

class CatalogController extends GetxController {
  final count = 0.obs;
  RxList<Catalogue> data = <Catalogue>[].obs;

  @override
  void onInit() {
    Get.log('init');
    _fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    Get.log('ready');
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void _fetchData() async {
    var stringData = await rootBundle.loadString('assets/catalogue.json');
    var response = json.decode(stringData);

    for (var catalog in response) {
      data.add(Catalogue.fromJson(catalog));
    }

    update();
  }
}
