import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/customtextformfield.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.all(30),
          child:ListView(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage(
                        'assets/images/logo.png'
                        ),
                      )
                  ),
                )
              ),
              Text(
                'Kicks Hub',
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  fontWeight: FontWeight.w800
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              CustomTextFormField(
                controller: controller.emailController,
                label: 'Email',
              ),
              CustomTextFormField(
                controller: controller.passwordController,
                label: 'Password',
                obscureText: true,
              ),
              CustomTextFormField(
                controller: controller.confirmPasswordController,
                label: 'Confirm Password',
                obscureText: true,
              ),
              Spacer(),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xff3498DB)
                  ),
                  onPressed:() {
                    controller.signUp();
                  } ,
                  child: Text(
                    'SignUp',
                    style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                    ),
                  )
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Divider(color: Color(0xffC0C0C0), height: 3)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Or Signup With',
                      style:GoogleFonts.arimo(
                        color: Color(0xffC0C0C0)
                      )
                    ),
                  ),
                  Expanded(child: Divider(color: Color(0xffC0C0C0), height: 3)),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: (){},
                  child:Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/icons/google.png')),
                          ),
                        ),
                      ),
                      Text(
                        'Sign Up With Google',
                        style: GoogleFonts.arimo(
                          fontWeight: FontWeight.w800,
                          color: Colors.black
                        ),
                      )
                    ],
                  )
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account ?'),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                    ' Login',
                    style: TextStyle(color: Color(0xff3498DB)),
                  ),
                  )
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
