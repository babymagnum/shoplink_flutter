// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStores on _LoginStores, Store {
  final _$loadingLoginAtom = Atom(name: '_LoginStores.loadingLogin');

  @override
  bool get loadingLogin {
    _$loadingLoginAtom.context.enforceReadPolicy(_$loadingLoginAtom);
    _$loadingLoginAtom.reportObserved();
    return super.loadingLogin;
  }

  @override
  set loadingLogin(bool value) {
    _$loadingLoginAtom.context.conditionallyRunInAction(() {
      super.loadingLogin = value;
      _$loadingLoginAtom.reportChanged();
    }, _$loadingLoginAtom, name: '${_$loadingLoginAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future login(BuildContext context) {
    return _$loginAsyncAction.run(() => super.login(context));
  }
}
