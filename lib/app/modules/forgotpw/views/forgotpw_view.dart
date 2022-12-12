import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgotpw_controller.dart';

class ForgotpwView extends GetView<ForgotpwController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ForgotpwView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ForgotpwView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
