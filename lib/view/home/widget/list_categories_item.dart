import 'package:dribbble_clone/core/helper/text_util.dart';
import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/home/categories_model.dart';

class ListCategoriesItem extends StatelessWidget {

  ListCategoriesItem({Key key, @required this.image, @required this.item}): super(key: key);

  final String image;
  final CategoriesModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Image.asset(image, width: 65.w, height: 65.w),
          SizedBox(height: 9.h,),
          Text(TextUtil.capitalize(item.name), style: ThemeTextStyle.neusaRegular.apply(color: Color(0xFF515C6F), fontSizeDelta: 15.ssp),)
        ],
      ),
    );
  }
}
