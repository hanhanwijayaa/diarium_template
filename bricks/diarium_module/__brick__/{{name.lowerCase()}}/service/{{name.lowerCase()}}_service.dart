import 'package:dio/dio.dart';
import 'package:diarium/lib.dart';

class {{name.pascalCase()}}Service {
  final Dio _dio = new Dio();

  {{name.pascalCase()}}Service() {
    _dio.options.connectTimeout = connectionTimeout;
    _dio.options.receiveTimeout = connectionReadTimeout;
    _dio.interceptors.add(alice.getDioInterceptor());
    _dio.interceptors.add(Logging());
  }

  Future<Response> get{{name.pascalCase()}}() async {
    _dio.options.baseUrl = FlavorConfig.instance!.values.baseUrl;
    _dio.options.headers["x-authorization"] =
    'bearer ${await SecureStorage.getDiariumToken()}';
    _dio.options.headers["authorization"] =
    'bearer ${await SecureStorage.getApimToken()}';
    try {
      var response = await _dio.get("api{{name.pascalCase()}}");
      return response;
    } on DioError catch (e) {
      return DioCatchError(e);
    }
  }
}
