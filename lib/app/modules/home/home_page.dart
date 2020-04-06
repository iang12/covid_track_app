import 'package:covid_tracker_app/app/modules/countries/countries_page.dart';
import 'package:covid_tracker_app/app/modules/home/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pie_chart/pie_chart.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Corona Track"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.yellow,
    Colors.red,
    Colors.green,
  ];
  @override
  void initState() {
    super.initState();
    controller.getCases().then((value) {
      dataMap.putIfAbsent("Active",
          () => (controller.allCases.active * 100) / controller.allCases.cases);
      dataMap.putIfAbsent(
          "Recovered",
          () =>
              (controller.allCases.recovered * 100) /
              controller.allCases.cases);
      dataMap.putIfAbsent("Death",
          () => (controller.allCases.deaths * 100) / controller.allCases.cases);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDD9DBE9),
      appBar: AppBar(
        backgroundColor: Color(0xFFDD9DBE9),
        title: Observer(builder: (_) {
          return Text(
            [widget.title, 'Countries'][controller.index],
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w800, color: Colors.black),
          );
        }),
        elevation: 0,
      ),
      body: Observer(builder: (_) {
        return [
          controller.allCases == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: PieChart(
                              dataMap: dataMap,
                              animationDuration: Duration(milliseconds: 800),
                              chartLegendSpacing: 32.0,
                              chartRadius:
                                  MediaQuery.of(context).size.width / 2.7,
                              showChartValuesInPercentage: true,
                              showChartValues: true,
                              showChartValuesOutside: false,
                              chartValueBackgroundColor: Colors.grey[200],
                              colorList: colorList,
                              showLegends: true,
                              legendPosition: LegendPosition.right,
                              decimalPlaces: 1,
                              showChartValueLabel: true,
                              initialAngle: 0,
                              chartValueStyle: defaultChartValueStyle.copyWith(
                                color: Colors.blueGrey[900].withOpacity(0.9),
                              ),
                              chartType: ChartType.disc,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: <Widget>[
                            CustomCard(
                              title: 'Cases',
                              image: 'assets/images/case.svg',
                              quantity: controller.allCases.cases.toString(),
                            ),
                            CustomCard(
                              title: 'Dead',
                              image: 'assets/images/death.svg',
                              quantity: controller.allCases.deaths.toString(),
                            ),
                            CustomCard(
                              title: 'Recovered',
                              image: 'assets/images/recovered.svg',
                              quantity:
                                  controller.allCases.recovered.toString(),
                            ),
                            CustomCard(
                              title: 'Active',
                              image: 'assets/images/sick.svg',
                              quantity: controller.allCases.active.toString(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
          CountriesPage(),
        ][controller.index];
      }),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          onTap: controller.onTapped,
          currentIndex: controller.index,
          items: [
            BottomNavigationBarItem(
              activeIcon: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text(
                'Home',
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              icon: Icon(Icons.search),
              title: Text('Countrys'),
            ),
          ],
        );
      }),
    );
  }
}
