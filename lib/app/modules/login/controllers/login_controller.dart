import 'package:get/get.dart';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ujian_kls2/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final showhidepw = false.obs;
  final count = 0.obs;

  changeEye() => showhidepw.toggle();

  final emailText = "Masukkan Email".obs; //biar engga error pas make obx
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future tombolLogin() async {
    log("tombol di pencet");
    Uri url = Uri.parse("http://34.128.70.114/login");

    Map data = {"email": email.text, "password": password.text};

    var body = json.encode(data);

    final response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 200) {
      log("berhasil login");
      Get.toNamed(Routes.HOME);
      // Redirect ke dashboard / homepage
    } else {
      log(response.statusCode.toString());
      log(response.body.toString());
      log("gagal login");
      // munculkan pesan error
    }
  }

  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
