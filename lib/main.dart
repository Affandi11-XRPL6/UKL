import 'package:flutter/material.dart';
import 'package:movi_id/View/bisokop.dart';
import 'package:movi_id/View/login.dart';
import 'package:movi_id/View/splashscreen.dart';
import 'package:movi_id/View/Ticket/tiket.dart';
import 'package:movi_id/View/tiketku.dart';
import 'View/home.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash' : (_) => SplashScreen(),
        '/login' : (_) => login(),
        '/home' : (_) => Dashboard(),
        '/bioskop' : (_) => BioskopList(),
        '/tiket' : (_) => Ticket(),
        '/tiketku' : (_) =>Tiketku() 
      },
    );
  }
}
