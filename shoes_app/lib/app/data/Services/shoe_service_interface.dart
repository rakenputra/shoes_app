import 'package:shoes_app/app/data/models/shoe_model.dart';

abstract class ShoeServiceInterface {
  Future<List<Shoe>> fetchShoes();
}