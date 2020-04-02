import 'package:covid_tracker_app/app/app_controller.dart';
import 'package:covid_tracker_app/app/modules/home/home_controller.dart';
import 'package:covid_tracker_app/app/shared/repositories/all_repository.dart';
import 'package:covid_tracker_app/app/shared/repositories/country_repository.dart';
import 'package:covid_tracker_app/app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:covid_tracker_app/app/app_widget.dart';
import 'package:covid_tracker_app/app/modules/home/home_module.dart';

import 'modules/countries/countries_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<AllRepository>())),
        Bind((i) => AllRepository(i.get())),
        /////////////////
        Bind((i) => CountriesController(i.get<CountryRepository>())),
        Bind((i) => CountryRepository(i.get())),
        Bind((i) => Dio(BaseOptions(baseUrl: APi.baseUrl))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
