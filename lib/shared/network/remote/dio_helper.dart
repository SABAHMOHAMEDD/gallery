import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = init();

  static init() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://technichal.prominaagency.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url ,
    String? token
  })
  async{
    dio?.options.headers = {
      'Authorization' : 'Bearer $token'
    };
    return await dio.get(url);
  }

  static Future<Response> PostData({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    return await dio.post(url, data: data);
  }
}
