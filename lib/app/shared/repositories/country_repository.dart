import 'package:covid_tracker_app/app/shared/models/country_model.dart';
import 'package:dio/dio.dart';

class CountryRepository {
  Dio dio;
  CountryRepository(this.dio);
  Future<List<Country>> getAllCountrys() async {
    final response = await dio.get('/countries');
    List<Country> countries =[];
    for (var json in (response.data) as List) {
      Country model = Country.fromJson(json);
      countries.add(model);
    }
    return countries;
  }
}
