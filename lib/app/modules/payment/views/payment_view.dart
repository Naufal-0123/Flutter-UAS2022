import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiselect/multiselect.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';
import 'package:ujian_kls2/app/routes/app_pages.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
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
                              onTap: () => Get.toNamed(Routes.DETAIL),
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
                  Text('BOOKING DETAILS',
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
                    keyboardType: TextInputType.number,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: GlobalColors.Color4)),
                        labelText: "Enter Number of people",
                        labelStyle: TextStyle(color: GlobalColors.Color4),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.person_add,
                          color: GlobalColors.Color4,
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    style: TextStyle(color: GlobalColors.Color3),
                    cursorColor: GlobalColors.Color4,
                    keyboardType: TextInputType.text,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: GlobalColors.Color4)),
                        labelText: "Enter Username",
                        labelStyle: TextStyle(color: GlobalColors.Color4),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.person,
                          color: GlobalColors.Color4,
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    style: TextStyle(color: GlobalColors.Color3),
                    cursorColor: GlobalColors.Color4,
                    keyboardType: TextInputType.text,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: GlobalColors.Color4)),
                        labelText: "Enter Gender",
                        labelStyle: TextStyle(color: GlobalColors.Color4),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.accessibility,
                          color: GlobalColors.Color4,
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    style: TextStyle(color: GlobalColors.Color3),
                    cursorColor: GlobalColors.Color4,
                    keyboardType: TextInputType.number,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: GlobalColors.Color4)),
                        labelText: "Enter Age",
                        labelStyle: TextStyle(color: GlobalColors.Color4),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.tag_faces,
                          color: GlobalColors.Color4,
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('are you sure you want to checkout',
                      style: GoogleFonts.anekBangla(
                        // textStyle: style,
                        color: GlobalColors.Color3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
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
                        onPressed: () => Get.toNamed(Routes.CHECKOUT),
                        child: Text("CHECKOUT",
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
