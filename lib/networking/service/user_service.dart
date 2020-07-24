import 'package:dribbble_clone/model/login/login_model.dart';
import 'package:dribbble_clone/networking/request/login_request.dart';
import 'package:dribbble_clone/networking/service/base_service.dart';
import '../../main.dart';
import '../request/login_request.dart';
import '../../model/home/home_model.dart';

class UserService extends BaseService {
  
  Future<LoginModel> login() async {
    return await postJsonBody('${MyApp.BASE_API}/login', LoginRequest().jsonBody());
  }

  Future<HomeModel> home() async {
    return await get('${MyApp.BASE_API}/config');
  }
}