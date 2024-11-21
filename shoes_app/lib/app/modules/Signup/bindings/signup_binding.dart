import 'package:get/get.dart';
import 'package:shoes_app/app/data/Services/auth_service.dart';
import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthService>(() => AuthService());
    Get.lazyPut<SignupController>(() => SignupController(),
    );
  }
}
