import 'package:covid_tracker_app/app/modules/countries/countries_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:covid_tracker_app/app/modules/countries/countries_page.dart';

class CountriesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CountriesController(i.get()))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CountriesPage()),
      ];

  static Inject get to => Inject<CountriesModule>.of();
}
