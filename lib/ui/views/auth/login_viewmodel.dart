import 'package:flutter/material.dart';
import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/services/auth_service.dart';
import 'package:reflip_store/utils/general_utils/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? errorMessage;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  Future<void> login(BuildContext context) async {
    setBusy(true);
    try {
      final user = await _authService.login(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );

      if (!context.mounted) return;

      if (user != null) {
        Utils.flushBarMessage(context, "Login successful!", isError: false);
        _navigationService.replaceWithHomeView();
      } else {
        Utils.flushBarMessage(
          context,
          "Login failed. Try again.",
          isError: true,
        );
      }
    } catch (e) {
      if (!context.mounted) return;

      Utils.flushBarMessage(context, e.toString(), isError: true);
    } finally {
      setBusy(false);
    }
  }

  void toggleAuth() {
    _navigationService.navigateToSignupView();
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
