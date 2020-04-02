import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:covid_tracker_app/app/modules/countries/countries_controller.dart';
import 'package:covid_tracker_app/app/modules/countries/countries_module.dart';

void main() {
  initModule(CountriesModule());
  // CountriesController countries;
  //
  setUp(() {
    //     countries = CountriesModule.to.get<CountriesController>();
  });

  group('CountriesController Test', () {
    //   test("First Test", () {
    //     expect(countries, isInstanceOf<CountriesController>());
    //   });

    //   test("Set Value", () {
    //     expect(countries.value, equals(0));
    //     countries.increment();
    //     expect(countries.value, equals(1));
    //   });
  });
}
