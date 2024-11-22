import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    User? currentUser  = FirebaseAuth.instance.currentUser ;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Max Verstappen'),
            accountEmail: Text(
              currentUser  != null ? currentUser .email ?? 'No Email' : 'Not logged in',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://cdn-4.motorsport.com/images/mgl/6D1XbeV0/s8/max-verstappen-red-bull-racing.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://www.britinsurance.com/media/bpyigkf5/collectible-sneaks-hero_1.jpg?width=768&height=570&v=1db0dc03d307770',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('wishlist'),
            onTap: () {
              Get.toNamed('/wishlist');
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('cart'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('profile'),
            onTap: (){
              Get.toNamed('/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('logout'),
            onTap: () {
              Get.offAllNamed('/getstarted');
            },
          ),
        ],
      ),
    );
  }
}