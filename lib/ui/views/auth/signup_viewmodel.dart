import 'package:flutter/material.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get nameController => _nameController;

  void signup() {
    _navigationService.navigateToHomeView();
  }

  void toggleAuth() {
    _navigationService.navigateToLoginView();
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
