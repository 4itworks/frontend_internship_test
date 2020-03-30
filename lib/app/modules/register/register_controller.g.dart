// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  final _$controllersAtom = Atom(name: '_RegisterControllerBase.controllers');

  @override
  ObservableList<TextEditingController> get controllers {
    _$controllersAtom.context.enforceReadPolicy(_$controllersAtom);
    _$controllersAtom.reportObserved();
    return super.controllers;
  }

  @override
  set controllers(ObservableList<TextEditingController> value) {
    _$controllersAtom.context.conditionallyRunInAction(() {
      super.controllers = value;
      _$controllersAtom.reportChanged();
    }, _$controllersAtom, name: '${_$controllersAtom.name}_set');
  }

  final _$disableRegisterAtom =
      Atom(name: '_RegisterControllerBase.disableRegister');

  @override
  bool get disableRegister {
    _$disableRegisterAtom.context.enforceReadPolicy(_$disableRegisterAtom);
    _$disableRegisterAtom.reportObserved();
    return super.disableRegister;
  }

  @override
  set disableRegister(bool value) {
    _$disableRegisterAtom.context.conditionallyRunInAction(() {
      super.disableRegister = value;
      _$disableRegisterAtom.reportChanged();
    }, _$disableRegisterAtom, name: '${_$disableRegisterAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'controllers: ${controllers.toString()},disableRegister: ${disableRegister.toString()}';
    return '{$string}';
  }
}
