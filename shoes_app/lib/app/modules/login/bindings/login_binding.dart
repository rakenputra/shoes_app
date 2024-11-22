import 'package:get/get.dart';
import 'package:shoes_app/app/data/Services/auth_service.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthService>(AuthService());  // Keeps AuthService in memory
    Get.put<LoginController>(LoginController());  // Keeps LoginController in memory
  }
}
