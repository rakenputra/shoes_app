import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signUp(String email, String password, String confirmpassword) async {
    if (email.isEmpty || password.isEmpty || confirmpassword.isEmpty){
      throw Exception('Please fill all fields');
    }
    if (password != confirmpassword){
      throw Exception("Password do not match");
    }
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    }catch (e){
      throw Exception(e.toString());
    }
  }

  Future<UserCredential?> login(String email, String password) async{
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, 
        password: password,
      );
      return userCredential;
    }catch (e) {
      throw Exception(e.toString());
    }
  }
}
