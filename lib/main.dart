import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streaming_app/screens/login_screen.dart';
import 'package:streaming_app/screens/onboarding_screen.dart';
import 'package:streaming_app/screens/signup_screen.dart';
import 'package:streaming_app/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Streaming App',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: backgroundColor,
          elevation: 0,
          titleTextStyle: const TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.w600),
          iconTheme: const IconThemeData(color: primaryColor),
        ),
      ),
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
      },
      home: const OnboardingScreen(),
    );
  }
}
