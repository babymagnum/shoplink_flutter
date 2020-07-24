import 'package:dribbble_clone/view/login/login_view.dart';
import 'package:dribbble_clone/view/menu/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/helper/constant.dart';

class StartView extends StatefulWidget {
  @override
  _StartViewState createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(milliseconds: 300), () => _checkRoute());
  }
  
  _checkRoute() async {
    final preference = await SharedPreferences.getInstance();
    final isLogin = preference.getBool(Constant.IS_LOGIN) ?? false;

    if (isLogin) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MenuView()));
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginView()));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    /// Init screen util packages, based on iPhone X screen
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return Scaffold(
      body: Container(
        width: size.width, height: size.height,
      ),
    );
  }
}
