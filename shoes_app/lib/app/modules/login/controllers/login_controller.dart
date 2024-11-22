import 'package:get/get.dart';
import 'package:shoes_app/app/data/Services/auth_service.dart';

class LoginController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();
  var isLoading = false.obs; // Observable for loading state
  var userEmail = ''.obs;

  Future<bool> login(String email, String password) async {
    isLoading.value = true; // Set loading state to true
    try {
      await _authService.login(email, password);
      userEmail.value = email;
      print("LoginController userEmail: ${userEmail.value}");
      Get.snackbar(
        'Login Successful',
        'Welcome back, $email',
      );
      return true; // Return true if login is successful
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
      return false; // Return false if there is an error
    } finally {
      isLoading.value = false;
    }
    
  }
}
