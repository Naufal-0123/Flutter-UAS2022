import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  var controller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.Color1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text('Go',
                  style: GoogleFonts.anekBangla(
                    // textStyle: style,
                    color: GlobalColors.Color3,
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Text('Trav',
                style: GoogleFonts.anekBangla(
                  // textStyle: style,
                  color: GlobalColors.Color4,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                )),
          ]),
        ],
      ),
    );
  }
}
