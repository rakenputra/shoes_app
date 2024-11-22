import 'package:get/get.dart';
import 'package:shoes_app/app/data/Services/mock_shoe_services.dart';
import 'package:shoes_app/app/data/Services/shoe_service.dart';
import 'package:shoes_app/app/data/Services/shoe_service_interface.dart';
import 'package:shoes_app/app/data/models/shoe_model.dart';

class HomeController extends GetxController {
  final bool useMockData = true; // Change this to false to use the real service
  late final ShoeServiceInterface _shoeService;
  var _shoes = <Shoe>[].obs;
  var _isLoading = true.obs;
  var _errorMessage = ''.obs;

  void addToCart(Shoe shoe) {
    Get.snackbar(shoe.name, 'Added to cart');
  }

  void addToWishList(Shoe shoe) {
    Get.snackbar(shoe.name, '${shoe.name} is added to your wishlist');
  }

  List<Shoe> get shoes => _shoes;
  RxBool get isLoading => _isLoading;
  RxString get errorMessage => _errorMessage;

  @override
  void onInit() {
    super.onInit();
    _shoeService = useMockData ? MockShoeService() : ShoeService();
    fetchShoes();
  }

  Future<void> fetchShoes() async {
    try {
      _isLoading.value = true;
      _shoes.value = await _shoeService.fetchShoes();
    } catch (e) {
      _errorMessage.value = e.toString();
    } finally {
      _isLoading.value = false;
    }
  }
}
