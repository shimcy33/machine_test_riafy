import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_up/swipe_up.dart';


class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("BUY NOW"),
                  ),

                ],
              ),
            ],
          )),),
    );
  }

}
