import 'package:get/get.dart';

import '../controllers/shoe_details_controller.dart';

class ShoeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoeDetailsController>(
      () => ShoeDetailsController(),
    );
  }
}
