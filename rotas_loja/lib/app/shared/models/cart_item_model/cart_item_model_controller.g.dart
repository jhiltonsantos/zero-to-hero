// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartItemModel on _CartItemModelControllerBase, Store {
  Computed<int> _$numberComputed;

  @override
  int get number => (_$numberComputed ??= Computed<int>(() => super.number,
          name: '_CartItemModelControllerBase.number'))
      .value;

  final _$_numberAtom = Atom(name: '_CartItemModelControllerBase._number');

  @override
  int get _number {
    _$_numberAtom.reportRead();
    return super._number;
  }

  @override
  set _number(int value) {
    _$_numberAtom.reportWrite(value, super._number, () {
      super._number = value;
    });
  }

  final _$_CartItemModelControllerBaseActionController =
      ActionController(name: '_CartItemModelControllerBase');

  @override
  void add() {
    final _$actionInfo = _$_CartItemModelControllerBaseActionController
        .startAction(name: '_CartItemModelControllerBase.add');
    try {
      return super.add();
    } finally {
      _$_CartItemModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove() {
    final _$actionInfo = _$_CartItemModelControllerBaseActionController
        .startAction(name: '_CartItemModelControllerBase.remove');
    try {
      return super.remove();
    } finally {
      _$_CartItemModelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
number: ${number}
    ''';
  }
}
