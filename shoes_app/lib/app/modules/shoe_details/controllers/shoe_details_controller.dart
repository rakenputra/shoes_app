import 'package:get/get.dart';
import 'package:shoes_app/app/data/models/shoe_model.dart';


class ShoeDetailsController extends GetxController {
  var shoe = Shoe(
    id: '',
    name: '',
    price: 0.0,
    imageUrl: '',
    rating: Rating(rate: 0.0, count: 0),
    description: '',
  ).obs;

   void addToCart(Shoe shoe) {
    Get.snackbar(shoe.name, 'Added to cart');
  }

  void addToWishList(Shoe shoe) {
    Get.snackbar(shoe.name, '${shoe.name} is added to your wishlist');
  }

}

