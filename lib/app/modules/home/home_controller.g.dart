// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$indexAtom = Atom(name: '_HomeControllerBase.index');

  @override
  int get index {
    _$indexAtom.context.enforceReadPolicy(_$indexAtom);
    _$indexAtom.reportObserved();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.context.conditionallyRunInAction(() {
      super.index = value;
      _$indexAtom.reportChanged();
    }, _$indexAtom, name: '${_$indexAtom.name}_set');
  }

  final _$allCasesAtom = Atom(name: '_HomeControllerBase.allCases');

  @override
  AllCase get allCases {
    _$allCasesAtom.context.enforceReadPolicy(_$allCasesAtom);
    _$allCasesAtom.reportObserved();
    return super.allCases;
  }

  @override
  set allCases(AllCase value) {
    _$allCasesAtom.context.conditionallyRunInAction(() {
      super.allCases = value;
      _$allCasesAtom.reportChanged();
    }, _$allCasesAtom, name: '${_$allCasesAtom.name}_set');
  }

  final _$getCasesAsyncAction = AsyncAction('getCases');

  @override
  Future<AllCase> getCases() {
    return _$getCasesAsyncAction.run(() => super.getCases());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void onTapped(int value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.onTapped(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'index: ${index.toString()},allCases: ${allCases.toString()}';
    return '{$string}';
  }
}
