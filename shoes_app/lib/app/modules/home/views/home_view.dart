import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_app/app/modules/widget/sidebar.dart';
import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Kicks Hub',
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_basket),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.errorMessage.isNotEmpty) {
          return Center(child: Text(controller.errorMessage.value));
        } else {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            itemCount: controller.shoes.length,
            itemBuilder: (context, index) {
              final shoe = controller.shoes[index];
              return GestureDetector(
                onTap: () {
                  // Navigate to ShoeDetailsView and pass the selected shoe
                  Get.toNamed('/shoe-details', arguments: shoe);
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.network(
                              shoe.imageUrl,
                              fit: BoxFit.cover,
                              height: 120,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  shoe.name,
                                  style: GoogleFonts.arimo(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '\$${shoe.price.toStringAsFixed(2)}',
                                  style: GoogleFonts.arimo(
                                    fontSize: 14,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 8,
                        bottom: 8,
                        child: InkWell(
                          onTap: () {
                            controller.addToCart(shoe);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.shopping_bag, color: Colors.blue),
                              SizedBox(width: 4),
                              Text(
                                'Add to cart',
                                style: GoogleFonts.arimo(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: InkWell(
                          onTap: () {
                            controller.addToWishList(shoe);
                          },
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}