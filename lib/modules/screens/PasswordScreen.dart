import 'package:flutter/material.dart';
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
                        activateButton: 1, marginTop: 0.0, paddingTop: 0.0),
                    Container(
                      margin: EdgeInsets.only(left: 30.0, top: 30.0),
                      child: Text(
                        "Create Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0, top: 10.0),
                      child: Text(
                        "Password will be used to login to account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
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
                              print("object");
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
                            child: Icon(
                              _isShowPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color:
                                  _isShowPassword ? Colors.blue : Colors.grey,
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          errorText:
                              _isErrorInput ? "Wrong input password" : null,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 30.0, top: 30.0, bottom: 20.0),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "Complexity:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(
                              _passwordController.text.isEmpty
                                  ? ""
                                  : _complexity,
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _isLowercase
                              ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "a",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                          _isUppercase
                              ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                          _isNumber
                              ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "123",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                          _isCharacter
                              ? WigetMaterial.checkListIcon()
                              : Container(
                                  child: Text(
                                    "9+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
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
                            margin: EdgeInsets.only(top: 10.0, left: 20.0),
                            child: Text(
                              "Lowercase",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0, right: 20.0),
                            child: Text(
                              "Upercase",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0, right: 20.0),
                            child: Text(
                              "Number",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0, right: 20.0),
                            child: Text(
                              "Characters",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
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
                    top: MediaQuery.of(context).size.height / 4.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      if (_isCharacter &&
                          _isLowercase &&
                          _isUppercase &&
                          _isNumber) {
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
}
