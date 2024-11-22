import 'package:get/get.dart';
import 'package:shoes_app/app/data/Services/mock_shoe_services.dart';
import 'package:shoes_app/app/data/mockdata/shoes_mock_data.dart';
import 'package:shoes_app/app/data/models/shoe_model.dart';
class WishlistController extends GetxController {
  // Observable list to hold the wishlist items
  var wishlist = <Shoe>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize the wishlist with mock data
    wishlist.addAll(getMockShoes());
  }

  // Method to add a shoe to the wishlist
  void addToWishlist(Shoe shoe) {
    if (!wishlist.contains(shoe)) {
      wishlist.add(shoe);
    }
  }

  // Method to remove a shoe from the wishlist
  void removeFromWishlist(Shoe shoe) {
    wishlist.remove(shoe);
  }

  // Method to clear the wishlist
  void clearWishlist() {
    wishlist.clear();
  }
}