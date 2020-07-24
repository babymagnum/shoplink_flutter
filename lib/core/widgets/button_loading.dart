import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/theme_text_style.dart';

class ButtonLoading extends StatelessWidget {

  ButtonLoading({Key key, @required this.title, @required this.loading, @required this.onTap}): super(key: key);

  final String title;
  final bool loading;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Parent(
      gesture: Gestures()..onTap(onTap),
      style: ParentStyle()..background.color(Colors.blue)..borderRadius(all: 6)..ripple(true)..height(48.h),
      child: Center(
        child: loading ?
        SizedBox(
          height: 17, width: 17,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ) :
        Text(title, style: ThemeTextStyle.openSansRegular.apply(color: Colors.white, fontSizeDelta: 14),),
      ),
    );
  }
}
