import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_app/app/modules/login/controllers/login_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {// Access the LoginController
     return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(
            child: Text(
              'Profile Page',
              style: GoogleFonts.arimo(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
              )
            ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              // Avatar
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage('https://cdn-4.motorsport.com/images/mgl/6D1XbeV0/s8/max-verstappen-red-bull-racing.jpg'),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10.0, right: 10),
                        child: Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'username',
                          style: GoogleFonts.arimo(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          'Max Verstappen',
                          style: GoogleFonts.arimo(
                            fontSize: 15,
                            color: Colors.grey
                            ),
                        ),
                      ],
                    ),
                    Spacer(),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.edit)
                          )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10.0, right: 10),
                        child: Icon(
                          Icons.email,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.arimo(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Obx(() =>Text(
                          controller.userEmail.value,
                          style: GoogleFonts.arimo(
                            fontSize: 15,
                            color: Colors.grey
                            ),
                        ),)
                      ],
                    ),
                    Spacer(),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.edit)
                          )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10.0, right: 10),
                        child: Icon(
                          Icons.phone,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone',
                          style: GoogleFonts.arimo(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          '024094927',
                          style: GoogleFonts.arimo(
                            fontSize: 15,
                            color: Colors.grey
                            ),
                        ),
                      ],
                    ),
                    Spacer(),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.edit)
                          )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
