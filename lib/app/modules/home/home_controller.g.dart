// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$usersAtom = Atom(name: '_HomeControllerBase.users');

  @override
  ObservableFuture<List<UserModel>> get users {
    _$usersAtom.context.enforceReadPolicy(_$usersAtom);
    _$usersAtom.reportObserved();
    return super.users;
  }

  @override
  set users(ObservableFuture<List<UserModel>> value) {
    _$usersAtom.context.conditionallyRunInAction(() {
      super.users = value;
      _$usersAtom.reportChanged();
    }, _$usersAtom, name: '${_$usersAtom.name}_set');
  }

  final _$_initAsyncAction = AsyncAction('_init');

  @override
  Future _init() {
    return _$_initAsyncAction.run(() => super._init());
  }

  @override
  String toString() {
    final string = 'users: ${users.toString()}';
    return '{$string}';
  }
}