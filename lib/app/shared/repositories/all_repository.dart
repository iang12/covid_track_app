import 'package:covid_tracker_app/app/shared/models/all_model.dart';
import 'package:dio/dio.dart';

class AllRepository {
  Dio dio;
  AllRepository(this.dio);
  
  Future<AllCase> getAllCases() async {
    final response = await dio.get('/all');
    return AllCase.fromJson(response.data);
  }
}
