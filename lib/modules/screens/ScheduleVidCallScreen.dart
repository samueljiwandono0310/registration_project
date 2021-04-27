import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_project/constants/constant.dart';
import 'package:registration_project/helpers/date_formatter.dart';
import 'package:registration_project/widgets/widget.dart';

class ScheduleVidCallScreen extends StatefulWidget {
  @override
  _ScheduleVidCallScreenState createState() => _ScheduleVidCallScreenState();
}

class _ScheduleVidCallScreenState extends State<ScheduleVidCallScreen> {
  String _dateValue = "";
  String _timeValue = "";
  String _error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5658ff),
      appBar: AppBar(
        elevation: Constant.size0,
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.transparent,
        title: Text("Create Account"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WigetMaterial.registrationStepNumber(activateButton: 3, marginTop: Constant.size0, paddingTop: Constant.size0),
                    Container(
                      margin: EdgeInsets.only(left: Constant.size20, top: Constant.size8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blueAccent, width: Constant.size10),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(Constant.size8),
                        child: Icon(
                          Icons.calendar_today_rounded,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: Constant.size30, top: Constant.size20),
                      child: Text(
                        "Schedule Video Call",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: Constant.size16),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: Constant.size30, top: Constant.size10),
                      child: Text(
                        "Choose the date and time that you preferred. we\nwill send a link via email to make a video call on\nthe scheduled date and time",
                        style: TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: Constant.size14),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext contex) {
                              return _buildBottomPicker(CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  onDateTimeChanged: (DateTime value) {
                                    final date = DateFormmater.date(value);
                                    setState(() {
                                      _dateValue = date;
                                    });
                                    print(date);
                                  }));
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: Constant.size30, right: Constant.size30, top: Constant.size30),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            Constant.size10,
                          ),
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Constant.size50,
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Container(
                                  margin: EdgeInsets.only(top: Constant.size10, left: Constant.size20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Date",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: Constant.size10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: Constant.size2),
                                        child: Text(_dateValue.isEmpty ? "- Choose Date -" : _dateValue,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: Constant.size14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Constant.size50,
                                width: Constant.size50,
                                child: Center(
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext contex) {
                              return _buildBottomPicker(CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.time,
                                  onDateTimeChanged: (DateTime time) {
                                    setState(() {
                                      _timeValue = "${time.hour}:${time.minute}";
                                    });
                                  }));
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: Constant.size30, right: Constant.size30, top: Constant.size30),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            Constant.size10,
                          ),
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Constant.size50,
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Container(
                                  margin: EdgeInsets.only(top: Constant.size10, left: Constant.size20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Time",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: Constant.size10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: Constant.size2),
                                        child: Text(_timeValue.isEmpty ? "- Choose Time -" : _timeValue,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: Constant.size14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Constant.size50,
                                width: Constant.size50,
                                child: Center(
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: Constant.size30, top: Constant.size10),
                      child: Text(
                        _error,
                        style: TextStyle(color: Colors.white, fontSize: Constant.size12),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 6.5,
                    left: Constant.size30,
                    right: Constant.size30,
                  ),
                  child: InkWell(
                    onTap: () {
                      if (_timeValue.isNotEmpty && _dateValue.isNotEmpty) {
                        setState(() {
                          _error = "Success, Thankyou";
                        });
                      } else {
                        setState(() {
                          _error = "* this question is requeired";
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(Constant.size8)),
                      width: double.infinity,
                      height: Constant.size50,
                      child: Center(
                        child: Text(
                          "Next",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomPicker(Widget picker) {
    return Container(
      height: Constant.size130,
      padding: const EdgeInsets.only(top: 6.0),
      color: CupertinoColors.white,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: CupertinoColors.black,
          fontSize: 22.0,
        ),
        child: GestureDetector(
          onTap: () {},
          child: SafeArea(
            top: false,
            child: picker,
          ),
        ),
      ),
    );
  }
}
