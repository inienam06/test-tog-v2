import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var tecUname = TextEditingController(), tecPassword = TextEditingController();
  String validUname = 'admin', validPassword = 'password';

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void doLogin() {
    var uname = tecUname.text.trim();
    var password = tecPassword.text.trim();

    if (uname.isEmpty || password.isEmpty) {
      Fluttertoast.showToast(
          msg: "Data tidak boleh kosong!",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.yellow,
          textColor: Colors.black,
          fontSize: 16.0);
      return;
    }

    if (uname != validUname || password != validPassword) {
      Fluttertoast.showToast(
          msg: "Invalid Login!",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.yellow,
          textColor: Colors.black,
          fontSize: 16.0);
      return;
    }

    Get.offNamed('/home');
    Fluttertoast.showToast(
        msg: "Login Berhasil",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
