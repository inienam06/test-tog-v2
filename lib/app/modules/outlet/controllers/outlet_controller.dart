import 'dart:convert';

import 'package:get/get.dart';
import 'package:tog_v2/app/models/outlet_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class OutletController extends GetxController {
  //TODO: Implement OutletController

  final count = 0.obs;
  RxList<Outlet> data = <Outlet>[].obs;
  @override
  void onInit() {
    _fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void _fetchData() async {
    var stringData = await rootBundle.loadString('assets/outlet.json');
    var response = json.decode(stringData);

    for (var catalog in response) {
      data.add(Outlet.fromJson(catalog));
    }

    update();
  }
}
