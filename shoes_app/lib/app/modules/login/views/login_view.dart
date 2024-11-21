import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_app/app/modules/widget/customtextformfield.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
   LoginView({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
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
                controller: emailcontroller,
                label: 'Email',
              ),
              CustomTextFormField(
                controller: passwordcontroller,
                obscureText: true,
                label: 'Password',
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
                    controller.login(
                      emailcontroller.text,
                      passwordcontroller.text
                    );
                  } ,
                  child: Text(
                    'Login',
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont have account ?'),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                    ' SignUp',
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

