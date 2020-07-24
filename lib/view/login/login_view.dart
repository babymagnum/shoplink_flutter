import 'package:dribbble_clone/core/widgets/button_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/helper/locator.dart';
import '../login/stores/login_stores.dart';

class LoginView extends StatelessWidget {

  var _loginStores = locator<LoginStores>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ButtonLoading(
                title: 'Login',
                loading: _loginStores.loadingLogin,
                onTap: () => _loginStores.login(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
