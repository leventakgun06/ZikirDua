import 'package:dio/dio.dart';

class ZikirDuaService {
  ZikirDuaService(this.baseUrl, this.bodyUrl);

  String baseUrl;
  String bodyUrl;

  Future<List> getZikirDuaDatas() async {
    final response = await Dio().get(baseUrl);
    return response.data[bodyUrl];
  }
}
