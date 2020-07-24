import 'package:dribbble_clone/networking/service/user_service.dart';
import 'package:dribbble_clone/view/menu/menu_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/helper/constant.dart';

part 'login_stores.g.dart';

class LoginStores = _LoginStores with _$LoginStores;

abstract class _LoginStores with Store {

  @observable bool loadingLogin = false;

  @action
  login(BuildContext context) async {
    loadingLogin = true;
    final success = await UserService().login();
    loadingLogin = false;

    if (success.success) {
      final preference = await SharedPreferences.getInstance();
      preference.setBool(Constant.IS_LOGIN, true);
      preference.setString(Constant.TOKEN, success.jwt);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MenuView()));
    } else {
      SnackBar(content: Text('${success.message}'));
    }
  }

}