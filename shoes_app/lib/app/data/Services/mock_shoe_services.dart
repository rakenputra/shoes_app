import 'package:shoes_app/app/data/mockdata/shoes_mock_data.dart';
import 'package:shoes_app/app/data/models/shoe_model.dart';
import 'shoe_service_interface.dart';


class MockShoeService implements ShoeServiceInterface {
  @override
  Future<List<Shoe>> fetchShoes() async {
    await Future.delayed(Duration(seconds: 3));
    return getMockShoes();
  }
}