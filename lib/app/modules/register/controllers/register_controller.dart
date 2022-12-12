import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ujian_kls2/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  final showhidepw = false.obs;
  changeEye() => showhidepw.toggle();
  final count = 0.obs;

  final emailText = "Masukkan Email".obs; //biar engga error pas make obx
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  Future tombolRegister() async {
    log("tombol di pencet");
    Uri url = Uri.parse("http://34.128.70.114/register");

    Map data = {
      "email": email.text,
      "password": password.text,
      "name": username.text,
      "status": "active",
      "jenisKelamin": "laki-laki"
    };

    var body = json.encode(data);

    final response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 201) {
      log("berhasil register");
      Get.toNamed(Routes.LOGIN);
      // Redirect ke dashboard / homepage
    } else {
      log(response.statusCode.toString());
      log(response.body.toString());
      log("gagal register");
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
