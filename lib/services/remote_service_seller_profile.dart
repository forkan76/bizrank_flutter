import 'package:npkbh/models/seller.dart';
import 'package:http/http.dart' as http;

class RemoteServiceSellerProfile{
  Future<List<Seller>?> getSellers() async
  {
    var client = http.Client();

    String serviceUrl = "http://localhost/fbsellers1/api/seller/read.php";
    var uri = Uri.parse(serviceUrl);
    var response = await client.post(uri,
        body: {
          "id": "1"
        });
    if(response.statusCode == 200)
    {
      var json = response.body;
      // return response.body.length;
      // print(response.body.length);
      return sellerFromJson(json);
    }
  }
}