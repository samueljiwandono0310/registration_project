import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_project/constants/constant.dart';

class WigetMaterial {
  static Widget registrationStepNumber({@required Color color}) {
    return Container(
      margin: EdgeInsets.only(top: Constant.size50),
      padding: EdgeInsets.only(top: Constant.size30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin:
                EdgeInsets.only(left: Constant.size30, right: Constant.size30),
            height: Constant.size5,
            width: double.infinity,
            color: Colors.black,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              circleNumber(numberOfValue: "1"),
              circleNumber(numberOfValue: "2"),
              circleNumber(numberOfValue: "3"),
              circleNumber(numberOfValue: "4"),
            ],
          ),
        ],
      ),
    );
  }

  static Widget circleNumber({@required String numberOfValue}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black)),
      child: Container(
        margin: EdgeInsets.all(Constant.size20),
        child: Text(
          numberOfValue,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: Constant.size20),
        ),
      ),
    );
  }
}
