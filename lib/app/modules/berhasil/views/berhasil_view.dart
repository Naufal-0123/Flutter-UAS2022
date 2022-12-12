import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';
import 'package:ujian_kls2/app/routes/app_pages.dart';

import '../controllers/berhasil_controller.dart';

class BerhasilView extends GetView<BerhasilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.Color1,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Get.toNamed(Routes.HOME),
                              child: Container(
                                  margin: EdgeInsets.only(top: 30, right: 30),
                                  // color: Colors.black,
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: GlobalColors.Color3,
                                    size: 30,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('SUCCEES',
                      style: GoogleFonts.anekBangla(
                        // textStyle: style,
                        color: GlobalColors.Color3,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
