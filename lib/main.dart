import 'package:e_commerce_app/src/features/auth/presentation/pages/sign_in_page.dart';
import 'package:e_commerce_app/src/features/auth/presentation/pages/user_data.dart';
import 'package:e_commerce_app/src/features/cart/presentation/pages/cart_page.dart';
import 'package:e_commerce_app/src/features/home/presentation/pages/home_page.dart';
import 'package:e_commerce_app/src/features/home/presentation/pages/view_item_page.dart';
import 'package:e_commerce_app/src/features/profile/presentation/pages/profile_page.dart';
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
        home: const ProfilePage());
        
        //  const ItemViewPage(
        //     title: 'title',
        //     description: 'description',
        //     imageUrl:
        //         'https://ng.jumia.is/cms/0-6-anniversary/2022/jfood/JA_Food_50Percent_Homepage-(712x384).jpg',
        //     price: 'location'));
  }
}
