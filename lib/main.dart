import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DetailPaga.dart';
import 'MainHomeScreen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor:  Color(0xffF4C55D),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ('Inter'),
        useMaterial3: true,
      ),
      home: const DetailPaga(),
    );
  }
}

