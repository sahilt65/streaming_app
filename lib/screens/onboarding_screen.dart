import 'package:flutter/material.dart';
import 'package:streaming_app/responsive/responsive.dart';
import 'package:streaming_app/screens/login_screen.dart';
import 'package:streaming_app/screens/signup_screen.dart';
import 'package:streaming_app/widgets/custom_button.dart';
// import 'package:streaming_app/screens/login_screen.dart';
// import 'package:streaming_app/screens/signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to \n Streamer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  text: 'Log in',
                ),
              ),
              CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, SignupScreen.routeName);
                  },
                  text: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
