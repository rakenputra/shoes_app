import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService extends GetxService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  

  Future<UserCredential?> signUp(String email, String password, String confirmpassword, String name) async {
    if (email.isEmpty || password.isEmpty || confirmpassword.isEmpty || name.isEmpty) {
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
      if(e is FirebaseAuthException){
        throw Exception(e.message);
      }else{
        throw Exception('An unknown error occurred. Please try again.');
      }
    }
  }
}
