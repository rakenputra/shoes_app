import 'package:get/get.dart';
import 'package:shoes_app/app/modules/login/controllers/login_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.put<LoginController>(LoginController());
    }
  }

