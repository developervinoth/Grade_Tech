import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final String value;
  final widgetValue;

  const AppWidget({
    Key key,
    this.value,
    this.widgetValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20, right: 20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFEEF3EC),
      ),
      child: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  value,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, color: Color(0xFF16503F)),
                ),
              ),
              Text(
                widgetValue,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF36A84C),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      // color: Color(),
    );
  }
}
