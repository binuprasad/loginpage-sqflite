import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page_using_sql/db/db_functions.dart';
import 'package:login_page_using_sql/view/home.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  LoginPage(),
    );
  }
}

