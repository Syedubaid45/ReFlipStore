import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/auth/login_viewmodel.dart';
import 'package:reflip_store/ui/views/auth/widgets/auth_form.dart';
import 'package:reflip_store/ui/views/auth/widgets/auth_header.dart';
import 'package:reflip_store/ui/views/auth/widgets/divider.dart';
import 'package:reflip_store/ui/views/auth/widgets/social_icons.dart';

import 'package:stacked/stacked.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return DeviceFrame(
      device: Devices.ios.iPhone13ProMax,
      isFrameVisible: true,
      orientation: Orientation.portrait,
      screen: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  AuthHeader(
                    title: "Log in",
                    subtitle: "Log in with one of the following options",
                    onBack: () {
                      // Handle back button tap
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialIconButton(
                        assetPath: "assets/images/google.png",
                        onTap: () => viewModel.signupWithGoogle(),
                      ),
                      SocialIconButton(
                        assetPath: "assets/images/twitter.png",
                        onTap: () => viewModel.signupWithTwitter(),
                      ),
                      SocialIconButton(
                        assetPath: "assets/images/apple.png",
                        onTap: () => viewModel.signupWithApple(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  DividerWithText(text: "Or"),
                  const SizedBox(height: 20),
                  AuthForm(
                    isSignup: false,
                    emailController: viewModel.emailController,
                    passwordController: viewModel.passwordController,
                    onSubmit: () => viewModel.login,
                    onToggleAuth: viewModel.toggleAuth,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
