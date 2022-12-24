import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_using_sql/const/colors.dart';
import 'package:login_page_using_sql/const/height.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: pink,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
            Textformfield(
              hinttext: 'Email',
            ),
            h10,
            Textformfield(
              hinttext: 'Password',
              suffixIcon: Icons.visibility,
            ),
            h30,
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.78,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(pink),
                    ),
                    child: Text(
                      'sign in ',
                      style: GoogleFonts.ptSerif(),
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
                    style: GoogleFonts.ptSerif(color: black,fontWeight: FontWeight.bold,fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign up',
                        style: GoogleFonts.ptSerif(color: blue),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Textformfield extends StatelessWidget {
  Textformfield({Key? key, required this.hinttext, this.suffixIcon})
      : super(key: key);
  String hinttext;
  IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hinttext,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
