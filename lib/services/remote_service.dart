import 'package:npkbh/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService{
  Future<List<Post>?> getPosts() async
  {
    var client = http.Client();

    String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
    var uri = Uri.parse(serviceUrl);
    var response = await client.get(uri);
    if(response.statusCode == 200)
    {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}