import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page_using_sql/controller/login_controller.dart';

// ignore: must_be_immutable
class Textformfield extends StatelessWidget {
  Textformfield({Key? key, required this.hinttext, this.suffixIcon, this.lines,this.validator,this.obscure, required this.textcontrolller})
      : super(key: key);
  final logincontroller = Get.put(LoginController());
 final String hinttext;
 final Widget? suffixIcon;
 final int? lines;
 final bool?obscure;
 final TextEditingController textcontrolller;
 final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hinttext,
      
        
        suffixIcon: suffixIcon,
      ),
      obscureText: obscure ?? false,
      maxLines: lines,
      validator: validator,
      controller:textcontrolller ,
    );
  }
}
