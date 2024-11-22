import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_app/app/data/models/shoe_model.dart';
import '../controllers/shoe_details_controller.dart';

class ShoeDetailsView extends GetView<ShoeDetailsController> {
  const ShoeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the shoe from the arguments passed to the view
    final Shoe shoe = Get.arguments;
    controller.shoe.value = shoe;

    return Scaffold(
      appBar: AppBar(
        title: Text(
              'Kicks Hub',
              style: GoogleFonts.bebasNeue(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
        centerTitle: true,
      ),
      body: Stack( // Use Stack to position the Add to Cart button
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    controller.shoe.value.imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 8),
                // Wishlist icon across the shoe name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        controller.shoe.value.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.red,), // Wishlist icon
                      onPressed: () {
                        controller.addToWishList(shoe); // Call the method to add to wishlist
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Display shoe description
                Text(
                  controller.shoe.value.description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                // Display shoe price and rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${controller.shoe.value.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 4),
                        Text(
                          '${controller.shoe.value.rating.rate.toStringAsFixed(1)}', // Access the rate
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '(${controller.shoe.value.rating.count})', // Show the count
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          // Add to cart button as text with icon on the right side
        Positioned(
          right: 8,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Background color for the button
              borderRadius: BorderRadius.circular(20), // Adjust the radius for rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(20), // Set the border radius for the splash effect
              onTap: () {
                controller.addToCart(shoe); // Call the method to add to cart
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Add padding for a larger touch area
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.blue),
                    SizedBox(width: 8), // Increased space between icon and text
                    Text(
                      'Add to cart',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
      ),
    );
  }
}