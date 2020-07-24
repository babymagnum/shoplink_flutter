import 'package:division/division.dart';
import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:dribbble_clone/core/widgets/placeholder_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/home/featured_model.dart';

class ListFeaturedItem extends StatelessWidget {

  ListFeaturedItem({Key key, @required this.item, @required this.isFirst,
    @required this.isLast}): super(key: key);

  final bool isLast;
  final bool isFirst;
  final FeaturedModel item;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Parent(
      style: ParentStyle()..boxShadow(color: Color(0xFFE7EAF0), offset: Offset(1, 6), blur: 5)
        ..background.color(Colors.white)..width((size.width - 50) / 3)
        ..margin(left: isFirst ? 25.w : 11.w, right: isLast ? 25.w : 0, top: 5, bottom: 20.h)
        ..borderRadius(all: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                left: 0, top: 0,
                child: Image.asset('assets/images/ar-360.png', width: 21.w, height: 30.h,),
              ),
              PlaceholderNetworkImage(
                borderRadius: 0, 
                boxFit: BoxFit.contain,
                size: Size((size.width - 50) / 3, 69.w),
                url: item.image,
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/aurora.png', width: 55.w, height: 15.h,),
          ),
          SizedBox(height: 11.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(item.name, maxLines: 1, overflow: TextOverflow.ellipsis,
                  style: ThemeTextStyle.neusaLight.apply(color: Color(0xFF515C6F), fontSizeDelta: 12.ssp),
                ),
                SizedBox(height: 3.h,),
                Text(item.price, maxLines: 1, overflow: TextOverflow.ellipsis,
                  style: ThemeTextStyle.neusaBold.apply(color: Color(0xFF515C6F), fontSizeDelta: 10.ssp),),
                SizedBox(height: 4.h,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
