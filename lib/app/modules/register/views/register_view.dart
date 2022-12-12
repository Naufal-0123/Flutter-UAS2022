import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ujian_kls2/app/routes/app_pages.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';
import 'package:ujian_kls2/app/modules/home/views/home_view.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.Color1,
        body: Obx(
          () => SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text('REGISTER',
                          style: GoogleFonts.anekBangla(
                            // textStyle: style,
                            color: GlobalColors.Color3,
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: controller.username,
                        style: TextStyle(color: GlobalColors.Color3),
                        cursorColor: GlobalColors.Color4,
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: GlobalColors.Color4)),
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
                        controller: controller.email,
                        style: TextStyle(color: GlobalColors.Color3),
                        cursorColor: GlobalColors.Color4,
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: GlobalColors.Color4)),
                            labelText: "Enter Email",
                            labelStyle: TextStyle(color: GlobalColors.Color4),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email,
                              color: GlobalColors.Color4,
                            )),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                          controller: controller.password,
                          style: TextStyle(color: GlobalColors.Color3),
                          cursorColor: GlobalColors.Color4,
                          obscureText:
                              controller.showhidepw.value ? false : true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: GlobalColors.Color4)),
                              labelText: "Enter password",
                              labelStyle: TextStyle(color: GlobalColors.Color4),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: GlobalColors.Color4,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () => controller.changeEye(),
                                  icon: Icon(
                                    controller.showhidepw.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: GlobalColors.Color4,
                                  )))),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                          controller: controller.password,
                          style: TextStyle(color: GlobalColors.Color3),
                          cursorColor: GlobalColors.Color4,
                          obscureText:
                              controller.showhidepw.value ? false : true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: GlobalColors.Color4)),
                              labelText: "Enter Confirm password",
                              labelStyle: TextStyle(color: GlobalColors.Color4),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: GlobalColors.Color4,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () => controller.changeEye(),
                                  icon: Icon(
                                    controller.showhidepw.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: GlobalColors.Color4,
                                  )))),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: GlobalColors.Color4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 100,
                          // color: GlobalColors.mainColor,
                          child: MaterialButton(
                            onPressed: () => controller.tombolRegister(),
                            child: Text("REGISTER",
                                style: GoogleFonts.anekBangla(
                                  // textStyle: style,
                                  color: GlobalColors.Color3,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        height: 30,
                        color: GlobalColors.Color4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account ?",
                            style: TextStyle(
                              color: GlobalColors.Color4,
                            ),
                          ),
                          TextButton(
                              onPressed: () => Get.toNamed(Routes.LOGIN),
                              child: Text(
                                "Login Account",
                                style: GoogleFonts.anekBangla(
                                  color: GlobalColors.Color3,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
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
        ));
  }
}
