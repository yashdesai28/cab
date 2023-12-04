import 'package:get/get.dart';

import '../controllers/cabhome_controller.dart';

class CabhomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CabhomeController>(
      () => CabhomeController(),
    );
  }
}
