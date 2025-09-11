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
                  viewModel.onBack();
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialIconButton(
                    assetPath: "assets/images/Google.png",
                    onTap: () => viewModel.signupWithGoogle(),
                  ),
                  SocialIconButton(
                    assetPath: "assets/images/Twitter.png",
                    onTap: () => viewModel.signupWithTwitter(),
                  ),
                  SocialIconButton(
                    assetPath: "assets/images/Apple.png",
                    onTap: () => viewModel.signupWithApple(),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              DividerWithText(text: "Or"),

              SizedBox(height: 20),
              AuthForm(
                isBusy: viewModel.isBusy,
                isSignup: true,
                emailController: viewModel.emailController,
                passwordController: viewModel.passwordController,
                nameController: viewModel.nameController,
                onSubmit: () => viewModel.signup(context),
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
