import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Textformfield extends StatelessWidget {
  Textformfield({Key? key, required this.hinttext, this.suffixIcon,this.lines})
      : super(key: key);
  String hinttext;
  IconData? suffixIcon;
  int? lines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hinttext,
        suffixIcon: Icon(suffixIcon),
        
      ),
      maxLines: lines,
    );
  }
}