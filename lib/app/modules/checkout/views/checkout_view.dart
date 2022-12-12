import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';
import 'package:ujian_kls2/app/routes/app_pages.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
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
                              onTap: () => Get.toNamed(Routes.PAYMENT),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            // onTap: () => Get.toNamed(Routes.DETAIL),
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    width: 400,
                                    height: 400,
                                    decoration: BoxDecoration(
                                      color: GlobalColors.Color3,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 1, right: 30),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.place,
                                                    color: GlobalColors.Color3,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    "MESIR",
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color3,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 1, left: 20),
                              // color: Colors.black,
                              child: Text(
                                "Sphinx",
                                style: TextStyle(
                                    color: GlobalColors.Color3,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 1, right: 20),
                                // color: Colors.black,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "25% off",
                                        style: TextStyle(
                                          color: GlobalColors.Color3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 1, left: 20),
                              // color: Colors.black,
                              child: Text(
                                "Subtotal :",
                                style: TextStyle(
                                    color: GlobalColors.Color3,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 1, right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            color: GlobalColors.Color3,
                                            size: 25,
                                          ),
                                          Text(
                                            "400 USD",
                                            style: TextStyle(
                                                color: GlobalColors.Color3,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('ok happy holidays have a nice holiday',
                      style: GoogleFonts.anekBangla(
                        // textStyle: style,
                        color: GlobalColors.Color3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 50, bottom: 50, left: 20, right: 20),
                    height: 50,
                    width: double.infinity,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: GlobalColors.Color4),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: GlobalColors.Color3,
                          borderRadius: BorderRadius.circular(15)),
                      child: MaterialButton(
                        onPressed: () => Get.toNamed(Routes.BERHASIL),
                        child: Text("PAY",
                            style: GoogleFonts.anekBangla(
                              // textStyle: style,
                              color: GlobalColors.Color2,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
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
