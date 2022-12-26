import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneContrller = TextEditingController();
  final addressController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  buttonclickValidator() {
    if (formKey.currentState!.validate()) {
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
