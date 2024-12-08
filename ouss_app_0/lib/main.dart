import 'package:flutter/material.dart';
//import 'package:ouss_app_0/detailes.dart';
import 'package:ouss_app_0/houseUser.dart';
//import 'package:ouss_app_0/dropdown.dart';
//import 'package:ouss_app_0/house.dart';
//import 'package:ouss_app_0/profil.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
           HouseListPageUser(),
    );
  }
}

