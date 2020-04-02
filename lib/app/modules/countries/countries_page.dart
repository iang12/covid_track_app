import 'package:covid_tracker_app/app/modules/countries/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'countries_controller.dart';

class CountriesPage extends StatefulWidget {
  final String title;
  const CountriesPage({Key key, this.title = "Countries"}) : super(key: key);

  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState
    extends ModularState<CountriesPage, CountriesController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDD9DBE9),
      body: Observer(
        builder: (_) {
          var c = controller.countries.value;
          if(c==null){
            return Center(child: CircularProgressIndicator(),);
          }
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    CustomWiget(
                      color: Colors.yellow,
                      numberCases: 'Active',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomWiget(
                      color: Colors.greenAccent,
                      numberCases: 'recoved',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomWiget(
                      color: Colors.red,
                      numberCases: 'deaths',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: c.length,
                  itemBuilder: (_, index) {
                    return SizedBox(
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Text(
                                    c[index].country,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      CustomWiget(
                                        color: Colors.yellow,
                                        numberCases: c[index].active.toString(),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      CustomWiget(
                                        color: Colors.greenAccent,
                                        numberCases:
                                            c[index].recovered.toString(),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      CustomWiget(
                                        color: Colors.red,
                                        numberCases: c[index].deaths.toString(),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
