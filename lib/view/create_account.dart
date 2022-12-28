import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_using_sql/const/colors.dart';
import 'package:login_page_using_sql/const/height.dart';
import 'package:login_page_using_sql/controller/create_account_controller.dart';
import 'package:login_page_using_sql/controller/login_controller.dart';
import 'package:login_page_using_sql/view/widgets/textform_field.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);
  final createaccountController = Get.put(CreateAccountController());
  final logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  bottom: MediaQuery.of(context).size.height * 0.10,
                ),
                child: Center(
                  child: Text(
                    'Create New Account',
                    style: GoogleFonts.ptSerif(fontSize: 40),
                  ),
                ),
              ),
              Form(
                key: createaccountController.formKey,
                child: Column(
                  children: [
                    Textformfield(
                      hinttext: 'name',
                      validator: (value) {
                        return createaccountController.nameValidator(value);
                      },
                      textcontrolller: createaccountController.nameController,
                      prefixIcon: Icons.person,
                    ),
                    h10,
                    Textformfield(
                      hinttext: 'Email',
                      validator: (value) {
                        return logincontroller.emailValidator(value);
                      },
                      textcontrolller: createaccountController.emailController,
                      prefixIcon: Icons.email,
                    ),
                    h10,
                    Textformfield(
                      hinttext: 'Password',
                      validator: (value) {
                        return logincontroller.passwordValidator(value);
                      },
                      textcontrolller:
                          createaccountController.passwordController,
                      prefixIcon: Icons.lock,
                    ),
                    h10,
                    Textformfield(
                      hinttext: 'Confirm Password',
                      validator: (value) {
                        return createaccountController
                            .confirmPasswordValidator(value);
                      },
                      textcontrolller:
                          createaccountController.confirmPasswordController,
                      prefixIcon: Icons.lock,
                    ),
                    h10,
                    Textformfield(
                      hinttext: 'Phone',
                      validator: (value) {
                        return createaccountController.phoneValidator(value);
                      },
                      textcontrolller: createaccountController.phoneContrller,
                      prefixIcon: Icons.phone,
                    ),
                    h10,
                    Textformfield(
                      hinttext: 'Address',
                      validator: (value) {
                        return createaccountController.addressValidator(value);
                      },
                      lines: 1,
                      textcontrolller:
                          createaccountController.addressController,
                      prefixIcon: Icons.info,
                    ),
                  ],
                ),
              ),
              h20,
              Container(
                color: pink,
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    createaccountController.buttonclickValidator();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(black),
                  ),
                  child: Text(
                    'sign up ',
                    style: GoogleFonts.ptSerif(),
                  ),
                ),
              ),
              h10,
            ],
          ),
        ),
      ),
    );
  }
}
