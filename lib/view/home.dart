import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_using_sql/const/colors.dart';
import 'package:login_page_using_sql/const/height.dart';
import 'package:login_page_using_sql/controller/login_controller.dart';
import 'package:login_page_using_sql/view/create_account.dart';

import 'widgets/textform_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginPagecontroller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.3,
                    left: MediaQuery.of(context).size.width * 0.3,
                    bottom: MediaQuery.of(context).size.height * 0.1),
                child: Text(
                  'Login Now',
                  style: GoogleFonts.lobster(fontSize: 40),
                ),
              ),
              h30,
              Form(
                key: loginPagecontroller.formKey,
                child: Column(
                  children: [
                    Textformfield(
                      hinttext: 'Email',
                      validator: (value) {
                        return loginPagecontroller.emailValidator(value);
                      },
                      textcontrolller: loginPagecontroller.emailController,
                    ),
                    h10,
                    Obx(
                      () => Textformfield(
                        obscure: loginPagecontroller.isobscure.value,
                        hinttext: 'Password',
                        validator: (value) {
                          return loginPagecontroller.passwordValidator(value);
                        },
                        lines: 1,
                        suffixIcon: IconButton(
                          onPressed: () {
                            loginPagecontroller.isobscure.value =
                                !loginPagecontroller.isobscure.value;
                          },
                          icon: Icon(
                            loginPagecontroller.isobscure.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                        textcontrolller: loginPagecontroller.passwordController,
                      ),
                    ),
                  ],
                ),
              ),
              h30,
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.78,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        loginPagecontroller.buttonclickValidator();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(black),
                      ),
                      child: Text(
                        'sign in ',
                        style: GoogleFonts.ptSerif(fontSize: 17),
                      ),
                    ),
                  ),
                  w5,
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: black,
                    child: Icon(Icons.arrow_circle_right_sharp),
                  )
                ],
              ),
              h5,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: GoogleFonts.ptSerif(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign up',
                          style: GoogleFonts.ptSerif(color: blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => CreateAccount(),
                                duration: const Duration(milliseconds: 3000),
                                transition: Transition.native),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
