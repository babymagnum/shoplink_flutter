import 'package:dribbble_clone/core/helper/constant.dart';
import 'package:dribbble_clone/core/helper/locator.dart';
import 'package:dribbble_clone/view/start_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/helper/constant.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

final globalNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {

  static const String BASE_API = Constant.API_STAGING;

  @override
  Widget build(BuildContext context) {
    /// this code to make apps to only allows portrait mode
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Shoplink Flutter',
      navigatorKey: globalNavigatorKey,
      debugShowCheckedModeBanner: false,
      home: StartView(),
    );
  }
}

