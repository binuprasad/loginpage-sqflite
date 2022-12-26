import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page_using_sql/db/db_functions.dart';
import 'package:login_page_using_sql/model/model.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  List<PeopleModel> peoples = [];
  RxBool isobscure = false.obs;


  // ----------------------------------getdetails
  Future<void> getDetailes() async {
    peoples.clear();
    db.rawQuery('SELECT * FROM people');
  }

  //---------------------------add details

  Future<void> addPeople(PeopleModel value) async {
    await db.rawInsert(
        'INSERT INTO people(name,password,email,phone,address)VALUES(?,?,?,?,?)',
        [value.name, value.password, value.email, value.phone, value.address]);

    peoples.add(value);
  }
 buttonclickValidator() {
 
    if (formKey.currentState!.validate()) {
      log("yuiop");
      return  ;
    }
  }
  // if (formKey.currentState.validate()) {
  //     String email = emailController.text.trim();
  //     String password = passwordController.text.trim();
  // }
  passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'invalid Password';
    }
    if (value.length < 6) {
      return 'Must be more than 5 charater';
    }
  }

  emailValidator(value) {
    if (value == null || value.isEmpty) {
      return 'invalid Email';
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return 'Please a valid Email';
    }
  }
}
