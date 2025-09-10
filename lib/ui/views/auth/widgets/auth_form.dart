import 'package:flutter/material.dart';
import 'package:reflip_store/ui/widgets/textformfield_widget.dart';
import 'package:reflip_store/ui/widgets/elevatedbutton_widget.dart';

class AuthForm extends StatelessWidget {
  final bool isSignup;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController? nameController;
  final VoidCallback onSubmit;
  final VoidCallback onToggleAuth;

  const AuthForm({
    super.key,
    required this.isSignup,
    required this.emailController,
    required this.passwordController,
    this.nameController,
    required this.onSubmit,
    required this.onToggleAuth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isSignup) ...[
          textFormField(
            hintText: "Full Name",
            labelText: "Full Name",
            controller: nameController!,
          ),
          const SizedBox(height: 20),
        ],
        textFormField(
          hintText: "Email",
          labelText: "Email",
          controller: emailController,
        ),
        const SizedBox(height: 20),
        textFormField(
          hintText: "Password",
          labelText: "Password",
          controller: passwordController,
          isPassword: true,
        ),
        const SizedBox(height: 20),
        ElevatedButtonWidget(
          onPressed: onSubmit,
          text: isSignup ? "Signup" : "Login",
          color: Colors.pinkAccent,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isSignup
                  ? "Already have an account? "
                  : "Don't have an account? ",
            ),
            GestureDetector(
              onTap: onToggleAuth,
              child: Text(
                isSignup ? "Login" : "Sign Up",
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
