import 'package:flutter/material.dart';
import 'package:flycation/ui/pages/bonus_pages.dart';
import 'package:flycation/ui/pages/get_started_page.dart';
import 'package:flycation/ui/pages/main_pages.dart';
import 'package:flycation/ui/pages/setting_page.dart';
import 'package:flycation/ui/pages/sign_in_page.dart';
import 'package:flycation/ui/pages/sign_up_pages.dart';
import 'package:flycation/ui/pages/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flycation/ui/pages/transaction_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

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
        '/sign-in': (context) => SignInPage(),
        '/settings': (context) => SettingPage(),
        '/bonus': (context) => BonusPages(),
        '/transaction': (context) => TransactionPage(),
        '/main': (context) => MainPages(),
      },
      initialRoute: '/',
    );
  }
}
