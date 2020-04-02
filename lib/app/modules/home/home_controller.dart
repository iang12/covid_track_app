import 'package:covid_tracker_app/app/shared/models/all_model.dart';
import 'package:covid_tracker_app/app/shared/repositories/all_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  AllRepository allRepository;
  @observable
  int index = 0;
  @action
  void onTapped(int value) {
    index = value;
  }

  @observable
  AllCase allCases;
  @action
  Future<AllCase> getCases() async {
    return allCases = await allRepository.getAllCases();
  }

  _HomeControllerBase(this.allRepository) {
    getCases();
  }
}
