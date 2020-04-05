import 'package:flutter/material.dart';

class CustomWiget extends StatelessWidget {
  final String numberCases;
  final Color color;

  const CustomWiget({Key key, this.numberCases, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(numberCases.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
