import 'package:covid_tracker_app/app/shared/models/country_model.dart';
import 'package:covid_tracker_app/app/shared/repositories/country_repository.dart';
import 'package:mobx/mobx.dart';

part 'countries_controller.g.dart';

class CountriesController = _CountriesControllerBase with _$CountriesController;

abstract class _CountriesControllerBase with Store {
  CountryRepository countryRepository;
 

  @observable
  ObservableFuture<List<Country>> countries;

  _CountriesControllerBase(this.countryRepository) {
    countries = countryRepository.getAllCountrys().asObservable();
  }
}
