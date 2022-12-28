import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_using_sql/const/colors.dart';
import 'package:login_page_using_sql/controller/create_account_controller.dart';
import 'package:login_page_using_sql/db/db_functions.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final createaccountController = Get.put(CreateAccountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Record',
          style: GoogleFonts.ptSerif(color: black,fontSize: 19),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView.builder(
          itemCount: peopleDetail.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(peopleDetail[index].name),
                subtitle: Text(peopleDetail[index].phone),
                // onTap: () => ,
              ),
            );
          },
        ),
      ),
    );
  }
}
