import 'package:e_commerce_app/src/features/auth/presentation/pages/sign_in_page.dart';
import 'package:e_commerce_app/src/features/auth/presentation/pages/user_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const UserDataPage());
  }
}
