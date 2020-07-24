import 'package:dio/dio.dart';
import 'package:dribbble_clone/core/helper/constant.dart';
import 'package:dribbble_clone/model/login/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../model/success/success.dart';
import '../../model/home/home_model.dart';

class BaseService {

  var _defaultError = {
    'success': false,
    'message': 'Gateway error, please try again.'
  };

  Future<Map<String, String>> getHeaders() async {
    var prefs = await SharedPreferences.getInstance();
    var maps = Map<String, String>();
    maps['Authorization'] = 'Bearer ${prefs.getString(Constant.TOKEN)}';
    return maps;
  }

  // TODO: POST WITH JSON BODY
  Future<T> postJsonBody<T>(String url, dynamic body) async {
    T resultResponse;

    try {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor(responseBody: true));
      var response = await dio.post(url, data: body, options: Options(headers: await getHeaders()));
      resultResponse = fromJson<T>(response.data);
    } on DioError catch (_) {
      resultResponse = fromJson<T>(_defaultError);
    }

    return resultResponse;

  }

  // TODO: GET
  Future<T> get<T>(String url) async {
    T resultResponse;

    try {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor(responseBody: false));
      var response = await dio.get(url, options: Options(headers: await getHeaders()));
      resultResponse = fromJson<T>(response.data);
    } on DioError catch (_) {
      resultResponse = fromJson<T>(_defaultError);
    }

    return resultResponse;
  }

  // TODO: Converter json to dart object
  static T fromJson<T>(dynamic json) {
    if (T == Success) {
      return Success.fromJson(json) as T;
    } else if (T == LoginModel) {
      return LoginModel.fromJson(json) as T;
    } else if (T == HomeModel) {
      return HomeModel.fromJson(json) as T;
    } else {
      // if this print statement occured, this means that you're not register the model class in here
      print('Unknown class, dont forget to add your model in BaseService.dart to parse the json');
      throw Exception('Unknown class');
    }
  }
}
