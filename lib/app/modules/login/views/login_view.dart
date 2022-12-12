import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ujian_kls2/app/routes/app_pages.dart';
import 'package:ujian_kls2/app/modules/utils/global.dart';
import 'package:ujian_kls2/app/modules/home/views/home_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.Color1,
      body: Obx(() => SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text('LOGIN',
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
                        controller: controller.email,
                        style: TextStyle(color: GlobalColors.Color3),
                        cursorColor: GlobalColors.Color4,
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: GlobalColors.Color4)),
                            labelText: controller.emailText.value,
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
                              labelText: "Enter Password",
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
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(color: GlobalColors.Color4),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
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
                            onPressed: () => controller.tombolLogin(),
                            child: Text("LOGIN",
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

                      SizedBox(
                        height: 10,
                      ),
                      Divider(height: 30, color: GlobalColors.Color4),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont have an account ?",
                            style: TextStyle(
                              color: GlobalColors.Color4,
                            ),
                          ),
                          TextButton(
                              onPressed: () => Get.toNamed(Routes.REGISTER),
                              child: Text(
                                "Register Account",
                                style: GoogleFonts.anekBangla(
                                  color: GlobalColors.Color3,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // Social(),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
