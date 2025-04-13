import 'package:flutter/material.dart';
import 'package:flycation/services/user_services.dart';
import 'package:flycation/ui/pages/widgets/custom_button.dart';
import 'package:flycation/ui/pages/widgets/custom_text_form_field.dart';
import '../../shared/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final UserServices userServices = UserServices();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget emailInput() {
      return CustomTextFormField(
        controller: emailController,
        title: 'Email Address',
        hintText: 'Your Email Address',
      );
    }

    Widget passwordInput() {
      return CustomTextFormField(
        controller: passwordController,
        title: 'Password',
        hintText: 'Enter Password',
        obsecureText: true,
      );
    }

    Widget submitButton() {
      return CustomButton(
        title: 'Sign In',
        onPressed: () async {
          final response = await userServices.signIn(
            emailController.text,
            passwordController.text,
          );

          if (!mounted) return; // <- CEK DULU WIDGET-NYA MASIH HIDUP NGGAK

          if (response.isSuccess) {
            Navigator.pushNamed(context, '/main');
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(response.message),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  'Log In',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 20),
                emailInput(),
                passwordInput(),
                submitButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not registered?"),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Sign Up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
