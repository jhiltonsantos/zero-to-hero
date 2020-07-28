// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  Computed<bool> _$isLoggedComputed;

  @override
  bool get isLogged => (_$isLoggedComputed ??=
          Computed<bool>(() => super.isLogged, name: '_AuthStoreBase.isLogged'))
      .value;

  final _$_userAtom = Atom(name: '_AuthStoreBase._user');

  @override
  UserModel get _user {
    _$_userAtom.reportRead();
    return super._user;
  }

  @override
  set _user(UserModel value) {
    _$_userAtom.reportWrite(value, super._user, () {
      super._user = value;
    });
  }

  final _$_AuthStoreBaseActionController =
      ActionController(name: '_AuthStoreBase');

  @override
  dynamic setUser(UserModel userSet) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setUser');
    try {
      return super.setUser(userSet);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged}
    ''';
  }
}
