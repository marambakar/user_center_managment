import 'package:flutter/material.dart';
import 'package:user_center_managment/constants/app_assets.dart';
import 'package:user_center_managment/constants/app_colors.dart';

import '../widgets/drop_down_menu.dart';
import '../widgets/login_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: new SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [

                    // Drop down menu and register button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DropDownMenu(
                          initialValue: "Item 1",
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Container(
                      //    margin: EdgeInsets.symmetric(horizontal: 20),
                          height: MediaQuery.of(context).size.height / 13,
                          child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: AppColors.lightGreen,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),

                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: AppColors.black),
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                    ),

                    // Logo image
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image(image: AssetImage(AppAssets.loginLogo)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),

                    // Label Login
                    Container(
                      child: Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 22,
                    ),

                    // Email textfield.
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: LoginTextField(
                        text: "Enter Your Email",
                        icon: Icon(Icons.email_outlined),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),

                    // Passsword textfield.
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: LoginTextField(
                        text: "Enter Your Password",
                        icon: Icon(Icons.password),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),

                    // Verification email.
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: LoginTextField(
                          text: "Enter Verification Email",
                          icon: Icon(Icons.email_outlined)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 18,
                    ),

                    // Login button.
                    Container(
                         width: MediaQuery.of(context).size.width / 1.3,
                      child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.lightGreen,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          child: Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 20),
                              ))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),


                    // Forgot password.
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text("Forgot Password?")],),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
    // TODO: implement build
    throw UnimplementedError();
  }
}
