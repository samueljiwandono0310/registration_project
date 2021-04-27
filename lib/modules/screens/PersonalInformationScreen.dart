import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_project/model/dummy_data.dart';
import 'package:registration_project/widgets/widget.dart';

class PersonalInformation extends StatefulWidget {
  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  String _goalActivationValue = "";
  String _monthlyIncome = "";
  String _monthlyExpense = "";
  bool _error = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5658ff),
      appBar: AppBar(
        elevation: 0.0,
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
                    WigetMaterial.registrationStepNumber(
                        activateButton: 2, marginTop: 0.0, paddingTop: 0.0),
                    Container(
                      margin: EdgeInsets.only(left: 30.0, top: 30.0),
                      child: Text(
                        "Personal Information",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0, top: 10.0),
                      child: Text(
                        "please fill in the information below and your goal\nfor digital saving.",
                        style: TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext contex) {
                              return _buildPickerInterface(
                                  DummyData.dataGoalActivation, "goal");
                            });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50.0,
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Container(
                                  margin:
                                      EdgeInsets.only(top: 10.0, left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Goal for activation",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 2.0),
                                        child: Text(
                                          _goalActivationValue.isNotEmpty
                                              ? _goalActivationValue
                                              : "- Choose Option -",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.0,
                                width: 50.0,
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
                              return _buildPickerInterface(
                                  DummyData.dataMontlyIncome, "monthlyIncome");
                            });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50.0,
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Container(
                                  margin:
                                      EdgeInsets.only(top: 10.0, left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Monthly Income",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 2.0),
                                        child: Text(
                                          _monthlyIncome.isNotEmpty
                                              ? _monthlyIncome
                                              : "- Choose Option -",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.0,
                                width: 50.0,
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
                              return _buildPickerInterface(
                                  DummyData.dataMontlyExpance,
                                  "monthlyExpense");
                            });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50.0,
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Container(
                                  margin:
                                      EdgeInsets.only(top: 10.0, left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Montly expense",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 2.0),
                                        child: Text(
                                          _monthlyExpense.isNotEmpty
                                              ? _monthlyExpense
                                              : "- Choose Option -",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.0,
                                width: 50.0,
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
                      margin: EdgeInsets.only(left: 30.0, top: 10.0),
                      child: Text(
                        _error ? "* this question is requeired" : "",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 6.5,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      if (_goalActivationValue.isNotEmpty &&
                          _monthlyExpense.isNotEmpty &&
                          _monthlyIncome.isNotEmpty) {
                        setState(() {
                          _error = false;
                        });
                        Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamedAndRemoveUntil(context,'schedule-vidcall-screen', (Route<dynamic> route) => false);
                      } else {
                        setState(() {
                          _error = true;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(8.0)),
                      width: double.infinity,
                      height: 50.0,
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

  Widget _buildPickerInterface(List<String> data, String typePicker) {
    final FixedExtentScrollController scrollController =
        FixedExtentScrollController(initialItem: 0);
    return _buildBottomPicker(CupertinoPicker(
      scrollController: scrollController,
      itemExtent: 32.0,
      backgroundColor: CupertinoColors.white,
      children: List<Widget>.generate(data.length, (int index) {
        return Center(
          child: Text(data[index]),
        );
      }),
      onSelectedItemChanged: (int value) {
        if (typePicker == "goal") {
          setState(() {
            _goalActivationValue = data[value];
          });
        } else if (typePicker == "monthlyIncome") {
          setState(() {
            _monthlyIncome = data[value];
          });
        } else {
          setState(() {
            _monthlyExpense = data[value];
          });
        }
      },
    ));
  }

  Widget _buildBottomPicker(Widget picker) {
    return Container(
      height: 130.0,
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
