import 'package:dribbble_clone/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/theme_color.dart';
import '../../core/theme/theme_text_style.dart';

class MenuView extends StatefulWidget {

  static const routeName = 'home_view';

  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {

  var selectedIndex = 0;
  List<Widget> _listScreen = [Homeview()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _listScreen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 20,
              color: selectedIndex == 0 ? ThemeColor.orange : ThemeColor.dark_grey,
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 3),
              child: Text(
                'Screen 1',
                style: ThemeTextStyle.poppinsRegular.apply(
                  fontSizeDelta: 11.ssp, color: selectedIndex == 0 ? ThemeColor.orange : ThemeColor.dark_grey,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 20,
              color: selectedIndex == 1 ? ThemeColor.orange : ThemeColor.dark_grey,
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 3),
              child: Text(
                'Screen 2',
                style: ThemeTextStyle.openSansRegular.apply(
                  fontSizeDelta: 11.ssp, color: selectedIndex == 1 ? ThemeColor.orange : ThemeColor.dark_grey,
                ),
              ),
            ),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: ThemeColor.orange,
        onTap: (value) => setState(() => selectedIndex = value),
      ),
    );
  }
}
