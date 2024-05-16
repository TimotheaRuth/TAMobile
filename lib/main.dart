import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ta_praktpm/login_screen.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  await GetStorage.init('fav');
  await GetStorage.init('session');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final session = GetStorage('session');
  late bool isLogin = session.read('isLogin')??false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLogin? Container() : LoginScreen(),
    );
  }
}
