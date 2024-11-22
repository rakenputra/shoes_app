import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_app/app/data/Services/auth_service.dart';

class SignupController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();

  // Controllers for the text fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  var isLoading = false.obs; // Observable for loading state

  Future<void> signUp() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    // Call the AuthService to sign up
    isLoading.value = true; // Set loading state to true
    try {
      await _authService.signUp(email, password, confirmPassword,name);
      Get.snackbar(
        'Signup Successful',
        'Welcome, $email',
      );
      // Navigate to home or another page
      Get.offAllNamed('/home'); // Adjust the route as needed
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    } finally {
      isLoading.value = false; // Reset loading state
    }
  }
}