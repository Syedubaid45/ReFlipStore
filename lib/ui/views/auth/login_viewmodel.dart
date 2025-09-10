import 'package:flutter/material.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  void toggleAuth() {
    _navigationService.navigateToSignupView();
  }

  void login() {
    _navigationService.navigateToHomeView();
  }

  void signupWithGoogle() {
    // Implement Google signup logic here
  }

  void signupWithApple() {
    // Implement Facebook signup logic here
  }

  void signupWithTwitter() {
    // Implement Twitter signup logic here
  }
}
