import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:tog_v2/utils/custom_color.dart';

import '../controllers/catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
  @override
  Widget build(BuildContext context) {
    return GetX<CatalogController>(
      init: controller,
      builder: (builder) => Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(Icons.arrow_back,
                  color: CustomColor.parse(color: CustomColor.SECONDARY))),
          backgroundColor: CustomColor.parse(color: CustomColor.PRIMARY),
          title: Text('Catalog',
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
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            image: DecorationImage(
                                image: NetworkImage(model.image!),
                                fit: BoxFit.cover),
                            border: Border.all(
                                width: 2,
                                color: CustomColor.parse(
                                    color: CustomColor.PRIMARY)))),
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
                            '${model.price!}rb/kg',
                            style: TextStyle(
                                color: CustomColor.parse(
                                    color: CustomColor.ACCIENT),
                                fontStyle: FontStyle.italic,
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
