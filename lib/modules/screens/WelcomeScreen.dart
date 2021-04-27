import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_project/clip_path/clip_path.dart';
import 'package:registration_project/constants/constant.dart';
import 'package:registration_project/widgets/widget.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController _emailController = new TextEditingController();
  String _errorEmailValidator;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Constant.basicColor, statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipPath(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / Constant.size2Point8,
                        color: Constant.basicColor,
                      ),
                      clipper: CustomClipPath(),
                    ),
                  ),
                  WigetMaterial.registrationStepNumber(
                      activateButton: 0,
                      marginTop: Constant.size30,
                      paddingTop: Constant.size30),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / Constant.size4),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / Constant.size10,
                          left: Constant.size20,
                          right: Constant.size20,
                      ),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Welcome to",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: Constant.size36,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "GIN ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: Constant.size36,
                              ),
                              children: [
                                TextSpan(
                                  text: "Finans",
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: Constant.size36,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Constant.size20),
                            width: double.infinity,
                            child: Text(
                              "Welcome to The Bank of The Future.\nManage and track your accounts on\nthe go.",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: Constant.size18,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Constant.size30),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(Constant.size10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 0),
                                  blurRadius: Constant.size20,
                                )
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.all(Constant.size10),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: true,
                                controller: _emailController,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  prefixIcon: Icon(Icons.email),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  errorText: _errorEmailValidator == null ? null : _errorEmailValidator,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(Constant.size12)),
                                    borderSide: BorderSide(
                                        color: Colors.green,
                                        width: Constant.size2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(Constant.size10)),
                                    borderSide: BorderSide(
                                        color: Colors.green,
                                        width: Constant.size2),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: Constant.size35, left: Constant.size20, right: Constant.size20),
                child: InkWell(
                  onTap: () {
                    _validationEmail();
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    color: Constant.basicColor,
                    child: Container(
                      margin: EdgeInsets.only(top: Constant.size20, bottom: Constant.size20),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  void _validationEmail() {
    if (_emailController.text.isEmpty || !_emailController.text.contains("@")) {
      setState(() {
        _errorEmailValidator = "Please input the validate email";
      });
    } else {
      setState(() {
        _errorEmailValidator = null;
      });

      Future.delayed(Duration(seconds: 2));
      Navigator.pushNamedAndRemoveUntil(context, 'password-screen', (Route<dynamic> route) => false);
    }
  }
}
