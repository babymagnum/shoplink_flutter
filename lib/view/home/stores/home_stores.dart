import 'package:dribbble_clone/core/widgets/dialog_error.dart';
import 'package:dribbble_clone/networking/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../model/home/featured_model.dart';
import '../../../model/home/categories_model.dart';

part 'home_stores.g.dart';

class HomeStores = _HomeStores with _$HomeStores;

abstract class _HomeStores with Store {

  List<String> listImageCategories = [
    'assets/images/cincin.png',
    'assets/images/kalung.png',
    'assets/images/anting.png',
    'assets/images/see all.png'
  ];

  @observable bool loadingHome = true;
  @observable ObservableList<FeaturedModel> listFeatured = ObservableList.of([]);
  @observable ObservableList<CategoriesModel> listCategories = ObservableList.of([]);

  @action
  getHome(BuildContext context) async {
    loadingHome = true;
    final home = await UserService().home();
    loadingHome = false;

    if (home?.success ?? true) {
      home.featured.forEach((element) => listFeatured.add(element));
      home.categories.forEach((element) => listCategories.add(element));
    } else {
      showDialog(
        context: context,
        child: DialogError(
          error: home?.message ?? '',
          button: 'Try Again',
          buttonClick: () {
            Navigator.pop(context);
            getHome(context);
          },
        )
      );
    }
  }
}