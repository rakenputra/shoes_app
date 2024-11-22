import 'package:dio/dio.dart';
import 'package:shoes_app/app/data/Services/shoe_service_interface.dart';
import 'package:shoes_app/app/data/models/shoe_model.dart';

class ShoeService implements ShoeServiceInterface {
  final Dio _dio = Dio();

  @override
  Future<List<Shoe>> fetchShoes() async{
    try{
      final response = await _dio.get(
        'https://shoes-collections.p.rapidapi.com/shoes',
        options: Options(
          headers: {
            'x-rapidapi-key': '3d4d079c07msh0b35d3d00930db2p1fa9b8jsn0543e3d8fc50',
            'x-rapidapi-host': 'shoes-collections.p.rapidapi.com',
          },
        ),
      );
      if (response.statusCode == 200) {
        List jsonResponse = response.data;
        return jsonResponse.map((shoe) => Shoe.fromJson(shoe)).toList();
      }else{
      throw Exception('Failed to load shoes');
      }
    }catch(e){
      throw Exception('Failed to load shoes: $e');
    }
  }
}