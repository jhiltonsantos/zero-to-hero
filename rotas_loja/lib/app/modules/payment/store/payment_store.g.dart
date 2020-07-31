// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaymentStore on _PaymentStoreBase, Store {
  final _$paymentModelAtom = Atom(name: '_PaymentStoreBase.paymentModel');

  @override
  PaymentModel get paymentModel {
    _$paymentModelAtom.reportRead();
    return super.paymentModel;
  }

  @override
  set paymentModel(PaymentModel value) {
    _$paymentModelAtom.reportWrite(value, super.paymentModel, () {
      super.paymentModel = value;
    });
  }

  @override
  String toString() {
    return '''
paymentModel: ${paymentModel}
    ''';
  }
}
