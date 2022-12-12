import 'package:get/get.dart';

import '../controllers/berhasil_controller.dart';

class BerhasilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BerhasilController>(
      () => BerhasilController(),
    );
  }
}
