import 'package:division/division.dart';
import 'package:dribbble_clone/core/helper/locator.dart';
import 'package:dribbble_clone/core/helper/text_util.dart';
import 'package:dribbble_clone/core/theme/theme_text_style.dart';
import 'package:dribbble_clone/view/home/widget/list_categories_item.dart';
import 'package:dribbble_clone/view/home/widget/list_featured_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'stores/home_stores.dart';

class Homeview extends StatefulWidget {
  @override
  _HomeviewState createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {

  var _homeStores = locator<HomeStores>();

  @override
  void initState() {
    super.initState();

    /// get data here
    Future.delayed(Duration.zero, () {
      _homeStores.getHome(context);
    });
  }

  List<Widget> listCategories() {
    List<Widget> list = List();

    for (int i=0; i<_homeStores.listCategories.length + 1; i++) {
      if (i == 3) {
        list.add(
          Column(
            children: <Widget>[
              Parent(
                style: ParentStyle()..width(65.w)..height(65.w)..background.color(Colors.white)
                  ..boxShadow(color: Color(0xFFE7EAF0), offset: Offset(4, 6), blur: 5, spread: 1)..borderRadius(all: 1000),
                child: Center(
                  child: Icon(Icons.chevron_right, size: 20.w, color: Color(0xFFFF6969),),
                ),
              ),
              SizedBox(height: 9.h,),
              Text(TextUtil.capitalize('See All'), style: ThemeTextStyle.neusaRegular.apply(color: Color(0xFF515C6F), fontSizeDelta: 15.ssp),)
            ],
          )
        );
        break;
      } else {
        list.add(ListCategoriesItem(image: _homeStores.listImageCategories[i], item: _homeStores.listCategories[i]));
      }
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Observer(
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.h),
                _homeStores.loadingHome ?
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 20.w, height: 20.w,
                    child: CircularProgressIndicator(),
                  ),
                ) :
                Container(
                  height: 190.h, width: size.width, color: Colors.white,
                  child: NotificationListener(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => ListFeaturedItem(
                        item: _homeStores.listFeatured[index],
                        isFirst: index == 0,
                        isLast: index == _homeStores.listFeatured.length - 1,
                      ),
                      itemCount: _homeStores.listFeatured.length,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text('Categories', style: ThemeTextStyle.neusaRegular.apply(color: Color(0xFF515C6F), fontSizeDelta: 25.ssp),),
                ),
                SizedBox(height: 4.h,),
                _homeStores.loadingHome ?
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 20.w, height: 20.w,
                    child: CircularProgressIndicator(),
                  ),
                ) :
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: listCategories(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
