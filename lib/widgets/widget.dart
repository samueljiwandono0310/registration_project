import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_project/constants/constant.dart';

class WigetMaterial {
  static Widget registrationStepNumber({@required double marginTop, @required int activateButton, @required double paddingTop}) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      padding: EdgeInsets.only(top: paddingTop),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin:
                EdgeInsets.only(left: Constant.size30, right: Constant.size30),
            height: 2.5,
            width: double.infinity,
            color: Colors.black,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              circleNumber(numberOfValue: "1", activeStep: activateButton >= 1 ? true :  false),
              circleNumber(numberOfValue: "2", activeStep: activateButton >= 2 ? true :  false),
              circleNumber(numberOfValue: "3", activeStep: activateButton >= 3 ? true :  false),
              circleNumber(numberOfValue: "4", activeStep: activateButton >= 4 ? true :  false),
            ],
          ),
        ],
      ),
    );
  }

  static Widget circleNumber(
      {@required String numberOfValue, @required bool activeStep}) {
    return Container(
      decoration: BoxDecoration(
          color: !activeStep ? Colors.white : Colors.green,
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
