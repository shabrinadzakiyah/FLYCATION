import 'package:flutter/material.dart';
import 'package:flycation/ui/pages/bonus_pages.dart';
import 'package:flycation/ui/pages/get_started_page.dart';
import 'package:flycation/ui/pages/main_pages.dart';
import 'package:flycation/ui/pages/sign_up_pages.dart';
import 'package:flycation/ui/pages/splash_page.dart';
import 'package:flycation/ui/pages/widgets/custom_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPages(),
        '/main': (context) => MainPages(),
      },
    );
  }
}
