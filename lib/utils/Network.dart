import 'package:dio/dio.dart';

class Network {
  final String baseUrl = '';
  login(String username, String password) async {
    try {
      final dio = Dio();
      final response = await dio.post('${baseUrl}/');
      print(response.data);
    } catch (e) {
      return e;
    }
  }

  _getDatauser(String storage) async {
    try {
      final dio = Dio();
      final response = await dio.post('https://pub.dev');
      print(response.data);
    } catch (e) {
      return e;
    }
  }
}
