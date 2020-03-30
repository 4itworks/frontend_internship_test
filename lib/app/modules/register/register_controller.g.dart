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

  final _$emailIsOkAtom = Atom(name: '_RegisterControllerBase.emailIsOk');

  @override
  bool get emailIsOk {
    _$emailIsOkAtom.context.enforceReadPolicy(_$emailIsOkAtom);
    _$emailIsOkAtom.reportObserved();
    return super.emailIsOk;
  }

  @override
  set emailIsOk(bool value) {
    _$emailIsOkAtom.context.conditionallyRunInAction(() {
      super.emailIsOk = value;
      _$emailIsOkAtom.reportChanged();
    }, _$emailIsOkAtom, name: '${_$emailIsOkAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'controllers: ${controllers.toString()},emailIsOk: ${emailIsOk.toString()}';
    return '{$string}';
  }
}
