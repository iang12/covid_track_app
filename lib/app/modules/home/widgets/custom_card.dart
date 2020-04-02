import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final String quantity;

  const CustomCard({Key key, this.image, this.title, this.quantity})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(image),
          SizedBox(
            height: 12,
          ),
          Text(
            quantity,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),
          )
        ],
      ),
    ));
  }
}
