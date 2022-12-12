import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';
import 'package:ujian_kls2/app/routes/app_pages.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  final data = Get.arguments;
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      backgroundColor: GlobalColors.Color1,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 900,
                    height: 400,
                    decoration: BoxDecoration(
                      color: GlobalColors.Color3,
                      image: DecorationImage(
                          image: NetworkImage(""), fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Get.toNamed(Routes.HOME),
                              child: Container(
                                  margin: EdgeInsets.only(top: 30, left: 10),
                                  // color: Colors.black,
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: GlobalColors.Color2,
                                    size: 30,
                                  )),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 30, right: 10),
                                // color: Colors.black,
                                child: Icon(
                                  Icons.thumb_up_off_alt,
                                  color: GlobalColors.Color2,
                                  size: 30,
                                )),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.place,
                                color: GlobalColors.Color2,
                                size: 30,
                              ),
                              Text(
                                "MESIR",
                                style: TextStyle(
                                    color: GlobalColors.Color2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 1),
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
                                margin: EdgeInsets.only(top: 1, right: 10),
                                // color: Colors.black,
                                child: Row(
                                  children: [
                                    Text(
                                      "25% off",
                                      style: TextStyle(
                                        color: GlobalColors.Color3,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                          // width: 200,
                          height: 100,
                          // decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Duration",
                                    style: TextStyle(
                                      color: GlobalColors.Color4,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Ratings",
                                    style: TextStyle(
                                      color: GlobalColors.Color4,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                      color: GlobalColors.Color4,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: GlobalColors.Color3,
                                        ),
                                        Text(
                                          "5 Days",
                                          style: TextStyle(
                                            color: GlobalColors.Color3,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: GlobalColors.Color3,
                                        ),
                                        Text(
                                          "400 Reviews",
                                          style: TextStyle(
                                            color: GlobalColors.Color3,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.attach_money,
                                          color: GlobalColors.Color3,
                                        ),
                                        Text(
                                          "400 USD",
                                          style: TextStyle(
                                            color: GlobalColors.Color3,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 25),
                            // color: Colors.black,
                            child: Text(
                              "About This Place",
                              style: TextStyle(
                                  color: GlobalColors.Color3,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 30, right: 30),
                              // color: Colors.black,
                              child: Row(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      margin:
                                          EdgeInsets.only(right: 10, top: 10),
                                      decoration: BoxDecoration(
                                        color: GlobalColors.Color4,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(
                                        Icons.play_circle_outline,
                                        color: GlobalColors.Color1,
                                        size: 30,
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    // color: Colors.black,
                                    child: Text(
                                      "Watch Vlogs",
                                      style: TextStyle(
                                        color: GlobalColors.Color3,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 1, right: 10, left: 10),
                      // color: Colors.black,
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: GlobalColors.Color4,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            // color: Colors.black,
                            child: Text(
                              "The Great Sphinx of Giza is a limestone statue in the shape of a reclining sphinx. The sphinx is a mythological creature with the head of a human and the body of a lion. The statue faces straight from west to east, and is located on the Giza Plateau on the west bank of the Nile River in Giza, Egypt.",
                              style: TextStyle(
                                color: GlobalColors.Color3,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50, bottom: 50),
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
                                onPressed: () => Get.toNamed(Routes.PAYMENT),
                                child: Text("BOOKING NOW",
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
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
