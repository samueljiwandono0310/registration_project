import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_project/clip_path/clip_path.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF5658ff),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
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
                        height: MediaQuery.of(context).size.height / 2.8,
                        color: Color(0xFF5658ff),
                      ),
                      clipper: CustomClipPath(),
                    ),
                  ),
                  WigetMaterial.registrationStepNumber(color: Colors.green),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 4.0),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 10.0,
                          left: 20.0,
                          right: 20.0),
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
                                fontSize: 36.0,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "GIN ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 36.0,
                              ),
                              children: [
                                TextSpan(
                                  text: "Finans",
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 36.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            width: double.infinity,
                            child: Text(
                              "Welcome to The Bank of The Future.\nManage and track your accounts on\nthe go.",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 0),
                                  blurRadius: 20.0,
                                )
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: true,
                                controller: _emailController,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  prefixIcon: Icon(Icons.email),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  errorText: _errorEmailValidator == null
                                      ? null
                                      : _errorEmailValidator,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(
                                        color: Colors.green, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Colors.green, width: 2),
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
                margin: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: InkWell(
                  onTap: () {
                    _validationEmail();
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    color: Color(0xFF5658ff),
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
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
    }
  }
}
