import 'package:flutter/material.dart';
import 'package:flycation/services/user_services.dart';
import 'package:flycation/ui/pages/widgets/custom_button.dart';
import 'package:flycation/ui/pages/widgets/custom_text_form_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  UserServices userServices = UserServices();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join the journey and\nunlock new experiences',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          controller: nameController,
          title: 'Full Name',
          hintText: 'Your Legal Name',
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          controller: emailController,
          title: 'Email Address',
          hintText: 'Your Email Adress',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          controller: passwordContoller,
          title: 'Password',
          hintText: 'Enter Password',
          obsecureText: true,
        );
      }

      Widget ageInput() {
        return CustomTextFormField(
          controller: ageController,
          title: 'Age',
          hintText: 'Your Age',
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Sign Up',
          onPressed: () async {
            ResponseUserService response = await userServices.register(
                nameController.text,
                ageController.text,
                emailController.text,
                passwordContoller.text);
            if (response.isSuccess) {
              Navigator.pushNamed(context, '/bonus');
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(response.message),
                  duration: Duration(seconds: 2),
                ),
              );
            }
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            ageInput(),
            submitButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Already user?"),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/sign-in'),
                  child: Text("Sign In"),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greenTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
