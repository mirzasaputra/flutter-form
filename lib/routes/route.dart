import 'package:flutter/material.dart';
import 'package:flutterform/pages/sign_in.dart';
import 'package:flutterform/pages/sign_up.dart';
import 'package:flutterform/pages/forgot_password.dart';
import 'package:flutterform/pages/splash_forgot.dart';
import 'package:flutterform/pages/splash_signup.dart';
import 'package:flutterform/pages/splash_update_password.dart';
import 'package:flutterform/pages/update_password.dart';

Map<String, WidgetBuilder> buildRoute(BuildContext context) {
  return {
    '/': (context) => const SignInPage(),
    '/sign-up': (context) => const SignUpPage(),
    '/forgot-password': (context) => const ForgotPasswordPage(),
    '/splash-forgot': (context) => const SplashForgotPage(),
    '/update-password': (context) => const UpdatePasswordPage(),
    '/splash-update-password': (context) => const SplashUpdatePage(),
    '/splash-signup': (context) => const SplashSignUpPage(),
  };
}
