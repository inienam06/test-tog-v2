import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tog_v2/utils/custom_color.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(36),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      padding: EdgeInsets.all(36),
                      child: Image.asset('assets/coffee-bag.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              width: 2,
                              color: CustomColor.parse(
                                  color: CustomColor.PRIMARY))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      child: TextField(
                        controller: controller.tecUname,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: 'E-mail or Phone Number',
                            contentPadding: const EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: CustomColor.parse(
                                        color: CustomColor.PRIMARY)),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: CustomColor.parse(
                                        color: CustomColor.PRIMARY)),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: TextField(
                        controller: controller.tecPassword,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            contentPadding: const EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: CustomColor.parse(
                                        color: CustomColor.PRIMARY)),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: CustomColor.parse(
                                        color: CustomColor.PRIMARY)),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Text('Forgot Password?',
                          style: TextStyle(
                              color: CustomColor.parse(
                                  color: CustomColor.SECONDARY),
                              fontSize: 18)),
                    ),
                    Container(
                      width: double.infinity,
                      child: MaterialButton(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        onPressed: () => controller.doLogin(),
                        color: CustomColor.parse(color: CustomColor.SECONDARY),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color:
                                  CustomColor.parse(color: CustomColor.WHITE),
                              fontSize: 18),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/bg.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ))
          ],
        ),
      ),
    );
  }
}
