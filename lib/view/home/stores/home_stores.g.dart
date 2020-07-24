// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStores on _HomeStores, Store {
  final _$loadingHomeAtom = Atom(name: '_HomeStores.loadingHome');

  @override
  bool get loadingHome {
    _$loadingHomeAtom.context.enforceReadPolicy(_$loadingHomeAtom);
    _$loadingHomeAtom.reportObserved();
    return super.loadingHome;
  }

  @override
  set loadingHome(bool value) {
    _$loadingHomeAtom.context.conditionallyRunInAction(() {
      super.loadingHome = value;
      _$loadingHomeAtom.reportChanged();
    }, _$loadingHomeAtom, name: '${_$loadingHomeAtom.name}_set');
  }

  final _$listFeaturedAtom = Atom(name: '_HomeStores.listFeatured');

  @override
  ObservableList<FeaturedModel> get listFeatured {
    _$listFeaturedAtom.context.enforceReadPolicy(_$listFeaturedAtom);
    _$listFeaturedAtom.reportObserved();
    return super.listFeatured;
  }

  @override
  set listFeatured(ObservableList<FeaturedModel> value) {
    _$listFeaturedAtom.context.conditionallyRunInAction(() {
      super.listFeatured = value;
      _$listFeaturedAtom.reportChanged();
    }, _$listFeaturedAtom, name: '${_$listFeaturedAtom.name}_set');
  }

  final _$listCategoriesAtom = Atom(name: '_HomeStores.listCategories');

  @override
  ObservableList<CategoriesModel> get listCategories {
    _$listCategoriesAtom.context.enforceReadPolicy(_$listCategoriesAtom);
    _$listCategoriesAtom.reportObserved();
    return super.listCategories;
  }

  @override
  set listCategories(ObservableList<CategoriesModel> value) {
    _$listCategoriesAtom.context.conditionallyRunInAction(() {
      super.listCategories = value;
      _$listCategoriesAtom.reportChanged();
    }, _$listCategoriesAtom, name: '${_$listCategoriesAtom.name}_set');
  }

  final _$getHomeAsyncAction = AsyncAction('getHome');

  @override
  Future getHome(BuildContext context) {
    return _$getHomeAsyncAction.run(() => super.getHome(context));
  }
}
