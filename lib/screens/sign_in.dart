import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/input_field.dart';
import 'package:undigitally/widgets/google_button.dart';
import 'package:undigitally/widgets/have_an_account.dart';
import 'package:undigitally/widgets/password_field.dart';
import 'package:undigitally/widgets/rounded_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: primary,
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            color: accent, borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: textPrimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20, width: 0),
              InputField(
                  controller: emailController,
                  requiredText: 'Please enter an email',
                  hintText: 'Email'),
              const SizedBox(height: 20, width: 0),
              PasswordField(passwordController: passwordController),
              const SizedBox(height: 20, width: 0),
              const RoundedButton(
                textColor: appBarColor,
                color: darkGreen,
                text: 'Sign In',
                fontSize: 16,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              const SizedBox(height: 20, width: 0),
              const Center(
                child: Text(
                  'Or Sign In With',
                  style: TextStyle(
                    color: textPrimary,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(height: 20, width: 0),
              const GoogleLoginButton(),
              const SizedBox(height: 20, width: 0),
              const HaveAnAccount(haveText: 'Don\'t', buttonText: 'Sign Up'),
            ],
          ),
        ),
      )),
    );
  }
}