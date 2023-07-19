import 'package:npkbh/models/seller.dart';
import 'package:http/http.dart' as http;

class RemoteServiceSellerProfile{
  Future<List<Seller>?> getSellers() async
  {
    var client = http.Client();

    String serviceUrl = "http://localhost/fbsellers1/api/seller/read.php";
    var uri = Uri.parse(serviceUrl);
    var response = await client.get(uri);
    if(response.statusCode == 200)
    {
      var json = response.body;
      return sellerFromJson(json);
    }
  }
}