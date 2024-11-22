import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/wishlist_controller.dart';
import 'package:shoes_app/app/data/mockdata/shoes_mock_data.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right:50.0),
            child: Text(
              'Wishlist',
              style: GoogleFonts.bebasNeue(
                fontSize: 30,
                fontWeight: FontWeight.w800
                ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Obx(() {
        // Use the observable wishlist from the controller
        if (controller.wishlist.isEmpty) {
          return Center(child: Text('Your wishlist is empty'));
        } else {
          return ListView.builder(
            itemCount: controller.wishlist.length,
            itemBuilder: (context, index) {
              final shoe = controller.wishlist[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.network(
                    shoe.imageUrl,
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                  title: Text(
                    shoe.name,
                    style: GoogleFonts.arimo(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '\$${shoe.price.toStringAsFixed(2)}',
                    style: GoogleFonts.arimo(fontSize: 14, color: Colors.green),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      // Call the removeFromWishlist method to remove the shoe
                      controller.removeFromWishlist(shoe);
                    },
                  ),
                  onTap: () {
                    // Navigate to ShoeDetailsView and pass the selected shoe
                    Get.toNamed('/shoe-details', arguments: shoe);
                  },
                ),
              );
            },
          );
        }
      }),
    );
  }
}