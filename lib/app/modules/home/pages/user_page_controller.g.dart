// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserPageController on _UserPageControllerBase, Store {
  final _$userAtom = Atom(name: '_UserPageControllerBase.user');

  @override
  UserModel get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$_UserPageControllerBaseActionController =
      ActionController(name: '_UserPageControllerBase');

  @override
  dynamic _init() {
    final _$actionInfo =
        _$_UserPageControllerBaseActionController.startAction();
    try {
      return super._init();
    } finally {
      _$_UserPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'user: ${user.toString()}';
    return '{$string}';
  }
}
