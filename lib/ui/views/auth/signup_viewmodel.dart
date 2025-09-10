import 'package:flutter/material.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:reflip_store/services/auth_service.dart';

class SignupViewModel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  String? errorMessage;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get nameController => _nameController;

  Future<void> signup() async {
    setBusy(true);
    try {
      final user = await _authService.signUp(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );

      if (user != null) {
        _navigationService.replaceWithHomeView();
      } else {
        errorMessage = "Signup failed. Try again.";
        notifyListeners();
      }
    } catch (e) {
      errorMessage = e.toString();
      notifyListeners();
    } finally {
      setBusy(false);
    }
  }

  void toggleAuth() {
    _navigationService.navigateToLoginView();
  }

  void signupWithGoogle() {
    // TODO: Implement Google signup logic
  }

  void signupWithApple() {
    // TODO: Implement Apple signup logic
  }

  void signupWithTwitter() {
    // TODO: Implement Twitter signup logic
  }
}
