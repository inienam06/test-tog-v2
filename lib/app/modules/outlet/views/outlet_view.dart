import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tog_v2/utils/custom_color.dart';

import '../controllers/outlet_controller.dart';

class OutletView extends GetView<OutletController> {
  @override
  Widget build(BuildContext context) {
    return GetX<OutletController>(
      init: controller,
      builder: (builder) => Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(Icons.arrow_back,
                  color: CustomColor.parse(color: CustomColor.SECONDARY))),
          backgroundColor: CustomColor.parse(color: CustomColor.PRIMARY),
          title: Text('Franhise Outlet',
              style: TextStyle(
                  color: CustomColor.parse(color: CustomColor.SECONDARY))),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: builder.data.length,
            itemBuilder: (context, index) {
              var model = builder.data[index];

              return Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Card(
                        color: CustomColor.parse(color: CustomColor.PRIMARY),
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(
                                color: CustomColor.parse(
                                    color: CustomColor.PRIMARY))),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: SvgPicture.asset(
                            'assets/shop_icon.svg',
                            color:
                                CustomColor.parse(color: CustomColor.SECONDARY),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(16),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.name!,
                            style: TextStyle(
                                color: CustomColor.parse(
                                    color: CustomColor.ACCIENT),
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 18),
                          ),
                          Text(
                            model.address!,
                            style: TextStyle(
                                color: CustomColor.parse(
                                    color: CustomColor.ACCIENT),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
