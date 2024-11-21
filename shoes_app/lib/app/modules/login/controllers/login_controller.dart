import 'package:get/get.dart';
import 'package:shoes_app/app/data/Services/auth_service.dart';

class LoginController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();
  var isLoading = false.obs; // Observable for loading state

  Future<void> login(String email, String password) async {
    isLoading.value = true; // Set loading state to true
    try {
      await _authService.login(email, password);
      Get.snackbar(
        'Login Successful',
        'Welcome back, $email',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false; 
    }
  }
}