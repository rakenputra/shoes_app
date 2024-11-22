import 'package:get/get.dart';
import 'package:shoes_app/app/modules/login/controllers/login_controller.dart';

class ProfileController extends GetxController {
  final LoginController _loginController = Get.find<LoginController>();


  RxString get userEmail => _loginController.userEmail;
  

  @override
  void onInit() {
    super.onInit();
     print("ProfileController initialized. Observed userEmail: ${userEmail.value}");
  }
}
