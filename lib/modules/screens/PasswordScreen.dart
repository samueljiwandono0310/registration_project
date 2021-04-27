import 'package:flutter/material.dart';
import 'package:registration_project/constants/constant.dart';
import 'package:registration_project/widgets/widget.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController _passwordController = new TextEditingController();
  bool _isShowPassword = false;
  bool _isLowercase = false;
  bool _isUppercase = false;
  bool _isNumber = false;
  bool _isCharacter = false;
  bool _isErrorInput = false;
  String _complexity = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.basicColor,
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
                    WigetMaterial.registrationStepNumber(
                      activateButton: 1,
                      marginTop: Constant.size0,
                      paddingTop: Constant.size0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: Constant.size30, top: Constant.size30),
                      child: Text(
                        "Create Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: Constant.size16,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: Constant.size30, top: Constant.size10),
                      child: Text(
                        "Password will be used to login to account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: Constant.size14,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: Constant.size20,
                          left: Constant.size30,
                          right: Constant.size30),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        autocorrect: true,
                        onChanged: (String value) {
                          final validLowerCase = RegExp(r'^(?=.*[a-z])');
                          final validUpperCase = RegExp(r'^(?=.*[A-Z])');
                          final validNumber = RegExp(r'^(?=.*[1-9])');
                          final validSpecialCharacters = RegExp(r'^(?=.*?[!@#\$&*~])');

                          if (validLowerCase.hasMatch(value)) {
                            print("lowercase");
                            setState(() {
                              _isLowercase = true;
                            });
                          }
                          if (validUpperCase.hasMatch(value)) {
                            print("upercase");
                            setState(() {
                              _isUppercase = true;
                            });
                          }
                          if (validNumber.hasMatch(value)) {
                            print("number");
                            setState(() {
                              _isNumber = true;
                            });
                          }
                          if (validSpecialCharacters.hasMatch(value)) {
                            print("special character");
                            setState(() {
                              _isCharacter = true;
                            });
                          }

                          if (!validLowerCase.hasMatch(value)) {
                            setState(() {
                              _isLowercase = false;
                            });
                          }
                          if (!validUpperCase.hasMatch(value)) {
                            setState(() {
                              _isUppercase = false;
                            });
                          }
                          if (!validNumber.hasMatch(value)) {
                            setState(() {
                              _isNumber = false;
                            });
                          }
                          if (!validSpecialCharacters.hasMatch(value)) {
                            setState(() {
                              _isCharacter = false;
                            });
                          }
                          if (value.length < 4) {
                            setState(() {
                              _complexity = "Very Weak";
                            });
                          } else if (value.length < 6) {
                            setState(() {
                              _complexity = "Weak";
                            });
                          } else if (value.length < 8) {
                            setState(() {
                              _complexity = "Strong";
                            });
                          } else if (value.length > 9) {
                            setState(() {
                              _complexity = "Super Strong";
                            });
                          }
                        },
                        controller: _passwordController,
                        obscureText: !_isShowPassword ? true : false,
                        decoration: InputDecoration(
                          hintText: 'Create password',
                          suffixIcon: InkWell(
                            onTap: () {
                              if (_isShowPassword) {
                                setState(() {
                                  _isShowPassword = false;
                                });
                              } else {
                                setState(() {
                                  _isShowPassword = true;
                                });
                              }
                            },
                            child: Icon(_isShowPassword ? Icons.visibility : Icons.visibility_off,
                              color: _isShowPassword ? Colors.blue : Colors.grey,
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          errorText: _isErrorInput ? "Wrong input password" : null,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(Constant.size12)),
                            borderSide: BorderSide(color: Colors.blue, width: Constant.size2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(Constant.size10)),
                            borderSide: BorderSide(color: Colors.blue, width: Constant.size2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: Constant.size30,
                          top: Constant.size30,
                          bottom: Constant.size20),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "Complexity:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Constant.size14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: Constant.size5),
                            child: Text(_passwordController.text.isEmpty ? "" : _complexity,
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: Constant.size14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: Constant.size20,
                          left: Constant.size30,
                          right: Constant.size30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _isLowercase ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "a",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Constant.size24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                          _isUppercase ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Constant.size24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                          _isNumber ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "123",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Constant.size24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                          _isCharacter ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "9+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Constant.size24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: Constant.size10, left: Constant.size20),
                            child: Text(
                              "Lowercase",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Constant.size10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Constant.size10, right: Constant.size20),
                            child: Text(
                              "Upercase",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Constant.size10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Constant.size10, right: Constant.size20),
                            child: Text(
                              "Number",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Constant.size10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Constant.size10, right: Constant.size20),
                            child: Text(
                              "Characters",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Constant.size10,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / Constant.size4,
                    left: Constant.size30,
                    right: Constant.size30,
                  ),
                  child: InkWell(
                    onTap: () {
                      if (_isCharacter && _isLowercase && _isUppercase && _isNumber) {
                        setState(() {
                          _isErrorInput = false;
                        });
                        Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamedAndRemoveUntil(context, 'personal-information-screen', (Route<dynamic> route) => false);
                      } else {
                        setState(() {
                          _isErrorInput = true;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(8.0),
                      ),
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
}
