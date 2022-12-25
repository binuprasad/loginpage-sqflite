import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_using_sql/const/colors.dart';
import 'package:login_page_using_sql/const/height.dart';
import 'package:login_page_using_sql/view/widgets/textform_field.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);
  
  Color? get pink => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  bottom: MediaQuery.of(context).size.height * 0.10),
              child: Center(
                child: Text(
                  'Create New Account',
                  style: GoogleFonts.ptSerif(fontSize: 40),
                ),
              ),
            ),
            Textformfield(hinttext: 'name'),
            h10,
            Textformfield(hinttext: 'Email'),
            h10,
            Textformfield(hinttext: 'Password'),
            h10,
            Textformfield(hinttext: 'Phone'),
            h10,
            Textformfield(
              hinttext: 'Address',
              lines: 4,
            ),
            h20,
             Container(
              color: pink,
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(black),
                    ),
                    child: Text(
                      'sign in ',
                      style: GoogleFonts.ptSerif(),
                    ),
                  ),
                ),
            h10,
          ],
        ),
      ),
    );
  }
}
