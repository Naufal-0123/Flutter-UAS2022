import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ujian_kls2/Travel%20Model/travel.dart';

class HomeController extends GetxController {
  List<Datum> travel = [];
  final count = 0.obs;
  Future get() async {
    Uri url = Uri.parse("https://teal-perfect-wasp.cyclic.app/travel");

    try {
      final response =
          await http.get(url, headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        Welcome result = welcomeFromJson(response.body);
        travel = result.data;
        log("berhasil");
      } else {
        log("gagal");
      }
    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    }
  }

  @override
  void onInit() {
    get();
    log("message");
    super.onInit();
  }
}
