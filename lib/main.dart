import 'package:flutter/material.dart';
import 'package:multitool/screens/tasbih.dart';
import 'package:multitool/screens/home.dart';
import 'package:multitool/screens/login.dart';
import 'package:multitool/screens/register.dart';
import 'package:multitool/screens/timer.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/homepage': (context) => const HomeScreen(),
        '/register': (context) => const Register(),
        '/timer': (context) => const CountdownTimer(),
        '/tasbih': (context) => const TasbihPage(title: 'Tasbih'),
      },
    );
  }
}