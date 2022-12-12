import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';
import 'package:ujian_kls2/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.Color1,
      // appBar: AppBar(
      //   backgroundColor: GlobalColors.Color1,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: GlobalColors.Color3,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            width: 50,
                            height: 50,
                          ),
                          Text('Dzakwan',
                              style: GoogleFonts.anekBangla(
                                // textStyle: style,
                                color: GlobalColors.Color4,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: GlobalColors.Color4,
                        size: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Where Do You Want Go ?',
                          style: GoogleFonts.anekBangla(
                            // textStyle: style,
                            color: GlobalColors.Color3,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        style: TextStyle(color: GlobalColors.Color3),
                        cursorColor: GlobalColors.Color4,
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: GlobalColors.Color4)),
                            labelText: "Search",
                            labelStyle: TextStyle(color: GlobalColors.Color4),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.search,
                              color: GlobalColors.Color4,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Recomendation',
                            style: GoogleFonts.anekBangla(
                              // textStyle: style,
                              color: GlobalColors.Color3,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Text('[Places]',
                          style: GoogleFonts.anekBangla(
                            // textStyle: style,
                            color: GlobalColors.Color3,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Wrap(
                            children: List.generate(controller.travel.length,
                                (index) {
                              return InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, right: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(controller
                                                  .travel[index].gambar),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].diskon,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    // color: Colors.black,
                                                    child: Icon(
                                                      Icons.thumb_up_off_alt,
                                                      color:
                                                          GlobalColors.Color4,
                                                    )),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.place,
                                                    color: GlobalColors.Color4,
                                                  ),
                                                  Text(
                                                    controller
                                                        .travel[index].lokasi,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 1),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].judul,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color3,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 1, right: 10),
                                                    // color: Colors.black,
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: GlobalColors
                                                              .Color3,
                                                        ),
                                                        Text(
                                                          "50",
                                                          style: TextStyle(
                                                            color: GlobalColors
                                                                .Color3,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Chose Vocation',
                            style: GoogleFonts.anekBangla(
                              // textStyle: style,
                              color: GlobalColors.Color3,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Text('[Places]',
                          style: GoogleFonts.anekBangla(
                            // textStyle: style,
                            color: GlobalColors.Color3,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.only(left: 14.4, right: 28.8),
                    child: DefaultTabController(
                      length: 4,
                      child: TabBar(
                          labelPadding:
                              EdgeInsets.only(left: 14.4, right: 14.4),
                          indicatorPadding:
                              EdgeInsets.only(left: 14.4, right: 14.4),
                          isScrollable: true,
                          labelColor: GlobalColors.Color2,
                          unselectedLabelColor: GlobalColors.Color3,
                          tabs: [
                            Tab(
                              child: Container(
                                child: Text(
                                  "Sea",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                child: Text(
                                  "Mountain",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                child: Text(
                                  "Island",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                child: Text(
                                  "Forest",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('SEA [Place]',
                            style: GoogleFonts.anekBangla(
                              // textStyle: style,
                              color: GlobalColors.Color3,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Wrap(
                            children: List.generate(controller.travel.length,
                                (index) {
                              return InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, right: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(controller
                                                  .travel[index].gambar),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].diskon,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    // color: Colors.black,
                                                    child: Icon(
                                                      Icons.thumb_up_off_alt,
                                                      color:
                                                          GlobalColors.Color4,
                                                    )),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.place,
                                                    color: GlobalColors.Color4,
                                                  ),
                                                  Text(
                                                    controller
                                                        .travel[index].lokasi,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 1),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].judul,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color3,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 1, right: 10),
                                                    // color: Colors.black,
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: GlobalColors
                                                              .Color3,
                                                        ),
                                                        Text(
                                                          "50",
                                                          style: TextStyle(
                                                            color: GlobalColors
                                                                .Color3,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('MOUNTAIN [Place]',
                            style: GoogleFonts.anekBangla(
                              // textStyle: style,
                              color: GlobalColors.Color3,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Wrap(
                            children: List.generate(controller.travel.length,
                                (index) {
                              return InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL,
                                    arguments: controller.travel[index].judul),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, right: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(controller
                                                  .travel[index].gambar),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].diskon,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    // color: Colors.black,
                                                    child: Icon(
                                                      Icons.thumb_up_off_alt,
                                                      color:
                                                          GlobalColors.Color4,
                                                    )),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.place,
                                                    color: GlobalColors.Color4,
                                                  ),
                                                  Text(
                                                    controller
                                                        .travel[index].lokasi,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 1),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].judul,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color3,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 1, right: 10),
                                                    // color: Colors.black,
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: GlobalColors
                                                              .Color3,
                                                        ),
                                                        Text(
                                                          "50",
                                                          style: TextStyle(
                                                            color: GlobalColors
                                                                .Color3,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('ISLAND [Place]',
                            style: GoogleFonts.anekBangla(
                              // textStyle: style,
                              color: GlobalColors.Color3,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Wrap(
                            children: List.generate(controller.travel.length,
                                (index) {
                              return InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, right: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(controller
                                                  .travel[index].gambar),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].diskon,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    // color: Colors.black,
                                                    child: Icon(
                                                      Icons.thumb_up_off_alt,
                                                      color:
                                                          GlobalColors.Color4,
                                                    )),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.place,
                                                    color: GlobalColors.Color4,
                                                  ),
                                                  Text(
                                                    controller
                                                        .travel[index].lokasi,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 1),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].judul,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color3,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 1, right: 10),
                                                    // color: Colors.black,
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: GlobalColors
                                                              .Color3,
                                                        ),
                                                        Text(
                                                          "50",
                                                          style: TextStyle(
                                                            color: GlobalColors
                                                                .Color3,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('FOREST [Place]',
                            style: GoogleFonts.anekBangla(
                              // textStyle: style,
                              color: GlobalColors.Color3,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Wrap(
                            children: List.generate(controller.travel.length,
                                (index) {
                              return InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, right: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(controller
                                                  .travel[index].gambar),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].diskon,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    // color: Colors.black,
                                                    child: Icon(
                                                      Icons.thumb_up_off_alt,
                                                      color:
                                                          GlobalColors.Color4,
                                                    )),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.place,
                                                    color: GlobalColors.Color4,
                                                  ),
                                                  Text(
                                                    controller
                                                        .travel[index].lokasi,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color4,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 1),
                                                  // color: Colors.black,
                                                  child: Text(
                                                    controller
                                                        .travel[index].judul,
                                                    style: TextStyle(
                                                        color:
                                                            GlobalColors.Color3,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 1, right: 10),
                                                    // color: Colors.black,
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: GlobalColors
                                                              .Color3,
                                                        ),
                                                        Text(
                                                          "50",
                                                          style: TextStyle(
                                                            color: GlobalColors
                                                                .Color3,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
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
