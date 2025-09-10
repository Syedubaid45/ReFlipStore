import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/auth/signup_viewmodel.dart';
import 'package:reflip_store/ui/views/auth/widgets/auth_form.dart';
import 'package:reflip_store/ui/views/auth/widgets/auth_header.dart';
import 'package:reflip_store/ui/views/auth/widgets/divider.dart';
import 'package:reflip_store/ui/views/auth/widgets/social_icons.dart';
import 'package:stacked/stacked.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              AuthHeader(
                title: "Sign up",
                subtitle: "Sign up with one of the following options",
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

              SizedBox(height: 20),
              AuthForm(
                isSignup: true,
                emailController: viewModel.emailController,
                passwordController: viewModel.passwordController,
                nameController: viewModel.nameController,
                onSubmit: viewModel.signup,
                onToggleAuth: viewModel.toggleAuth,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(BuildContext context) => SignupViewModel();
}
