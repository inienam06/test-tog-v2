import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:tog_v2/utils/custom_color.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.parse(color: CustomColor.WHITE),
      // drawer: Drawer(),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: CustomColor.parse(color: CustomColor.PRIMARY),
        ),
        centerTitle: true,
        backgroundColor: Colors.white10,
        shadowColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Welcome\nPartner :)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.parse(
                                    color: CustomColor.PRIMARY)),
                          ),
                        ),
                        Expanded(child: Image.asset('assets/banner.jpg'))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60, right: 50),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => Get.toNamed('/catalog'),
                        child: Text('CATALOG',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.parse(
                                    color: CustomColor.ACCIENT))),
                      ),
                    ),
                    Container(
                      child: GetX<HomeController>(
                        init: controller,
                        builder: (builder) => GridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          children: [
                            Container(
                              margin: EdgeInsets.all(12),
                              child: GestureDetector(
                                onTap: () => builder.goto('outlet'),
                                child: Card(
                                  color: builder.active.value == 'outlet'
                                      ? CustomColor.parse(
                                          color: CustomColor.PRIMARY)
                                      : Colors.white,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      side: BorderSide(
                                          color: CustomColor.parse(
                                              color: CustomColor.PRIMARY))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/shop_icon.svg',
                                        color: builder.active.value == 'outlet'
                                            ? CustomColor.parse(
                                                color: CustomColor.SECONDARY)
                                            : CustomColor.parse(
                                                color: CustomColor.PRIMARY),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 12),
                                        child: Text('My Outlet',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: builder.active.value ==
                                                        'outlet'
                                                    ? CustomColor.parse(
                                                        color: CustomColor
                                                            .SECONDARY)
                                                    : CustomColor.parse(
                                                        color: CustomColor
                                                            .PRIMARY))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(12),
                              child: GestureDetector(
                                onTap: () => controller.belumTersedia('order'),
                                child: Card(
                                  color: builder.active.value == 'order'
                                      ? CustomColor.parse(
                                          color: CustomColor.PRIMARY)
                                      : Colors.white,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      side: BorderSide(
                                          color: CustomColor.parse(
                                              color: CustomColor.PRIMARY))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/cart_icon.svg',
                                        color: builder.active.value == 'order'
                                            ? CustomColor.parse(
                                                color: CustomColor.SECONDARY)
                                            : CustomColor.parse(
                                                color: CustomColor.PRIMARY),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 12),
                                        child: Text('Order',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: builder.active.value ==
                                                        'order'
                                                    ? CustomColor.parse(
                                                        color: CustomColor
                                                            .SECONDARY)
                                                    : CustomColor.parse(
                                                        color: CustomColor
                                                            .PRIMARY))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(12),
                              child: GestureDetector(
                                onTap: () =>
                                    controller.belumTersedia('notification'),
                                child: Card(
                                  color: builder.active.value == 'notification'
                                      ? CustomColor.parse(
                                          color: CustomColor.PRIMARY)
                                      : Colors.white,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      side: BorderSide(
                                          color: CustomColor.parse(
                                              color: CustomColor.PRIMARY))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/notification_icon.svg',
                                        color: builder.active.value ==
                                                'notification'
                                            ? CustomColor.parse(
                                                color: CustomColor.SECONDARY)
                                            : CustomColor.parse(
                                                color: CustomColor.PRIMARY),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 12),
                                        child: Text('Notification',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: builder.active.value ==
                                                        'notification'
                                                    ? CustomColor.parse(
                                                        color: CustomColor
                                                            .SECONDARY)
                                                    : CustomColor.parse(
                                                        color: CustomColor
                                                            .PRIMARY))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(12),
                              child: GestureDetector(
                                onTap: () =>
                                    controller.belumTersedia('history'),
                                child: Card(
                                  color: builder.active.value == 'history'
                                      ? CustomColor.parse(
                                          color: CustomColor.PRIMARY)
                                      : Colors.white,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      side: BorderSide(
                                          color: CustomColor.parse(
                                              color: CustomColor.PRIMARY))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/history_icon.svg',
                                        color: builder.active.value == 'history'
                                            ? CustomColor.parse(
                                                color: CustomColor.SECONDARY)
                                            : CustomColor.parse(
                                                color: CustomColor.PRIMARY),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 12),
                                        child: Text('History',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: builder.active.value ==
                                                        'history'
                                                    ? CustomColor.parse(
                                                        color: CustomColor
                                                            .SECONDARY)
                                                    : CustomColor.parse(
                                                        color: CustomColor
                                                            .PRIMARY))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
    );
  }
}
