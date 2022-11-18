import 'dart:convert';

import 'package:self/api/api.dart';

import '../Response/post_response.dart';

class posttestrepo {
  API api = API();
  Future<PostTest> demopost(data) async {
    dynamic response = await api.postData(jsonEncode(data),"/posts");
    PostTest res = PostTest.fromJson(response);
    return res;
  }
  
}