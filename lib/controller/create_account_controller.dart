import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_page_using_sql/db/db_functions.dart';
import 'package:login_page_using_sql/model/model.dart';
import 'package:login_page_using_sql/view/home.dart';

class CreateAccountController extends GetxController {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneContrller = TextEditingController();
  final addressController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> buttonclickValidator() async {
    if (formKey.currentState!.validate()) {
      final name = nameController.text.trim();
      final phone = phoneContrller.text.trim();
      final email = emailController.text.trim();
      final address = addressController.text.trim();
      final password = passwordController.text.trim();
      final people = PeopleModel(
          name: name,
          phone: phone,
          email: email,
          password: password,
          address: address);
      addPeople(people);

      log(peopleDetail[1].toString());
      Get.to(() => Home());
      return;
    }
  }

  nameValidator(value) {
    if (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return "Enter Correct Name";
    } else {
      return null;
    }
  }

  phoneValidator(value) {
    if (value.isEmpty ||
        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
            .hasMatch(value)) {
      return "Enter Correct Phone Number";
    } else {
      return null;
    }
  }

  confirmPasswordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please re-enter password';
    }
    if (passwordController.text != confirmPasswordController.text) {
      return "password doesnot match";
    } else {
      return null;
    }
  }

  addressValidator(value) {
    if (value.isEmpty) {
      return 'Please enter your address';
    } else {
      return null;
    }
  }
}
