import 'package:npkbh/models/seller.dart';
import 'package:http/http.dart' as http;

class RemoteServiceSellerProfile{
  Future<List<Seller>?> getSellers() async
  {
    var client = http.Client();

    String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
    var uri = Uri.parse(serviceUrl);
    var response = await client.get(uri);
    if(response.statusCode == 200)
    {
      var json = response.body;
      // throw Exception('exception ok');
      // return null;
      return sellerFromJson(json);
    }
  }
}