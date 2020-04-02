// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountriesController on _CountriesControllerBase, Store {
  final _$countriesAtom = Atom(name: '_CountriesControllerBase.countries');

  @override
  ObservableFuture<List<Country>> get countries {
    _$countriesAtom.context.enforceReadPolicy(_$countriesAtom);
    _$countriesAtom.reportObserved();
    return super.countries;
  }

  @override
  set countries(ObservableFuture<List<Country>> value) {
    _$countriesAtom.context.conditionallyRunInAction(() {
      super.countries = value;
      _$countriesAtom.reportChanged();
    }, _$countriesAtom, name: '${_$countriesAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'countries: ${countries.toString()}';
    return '{$string}';
  }
}
