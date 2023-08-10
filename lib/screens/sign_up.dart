import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/input_field.dart';
import 'package:undigitally/widgets/google_button.dart';
import 'package:undigitally/widgets/have_an_account.dart';
import 'package:undigitally/widgets/password_field.dart';
import 'package:undigitally/widgets/rounded_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
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
                  'Sign Up',
                  style: TextStyle(
                      color: textPrimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15, width: 0),
              InputField(
                  controller: nameController,
                  requiredText: 'Please enter your name',
                  hintText: 'Name'),
              const SizedBox(height: 15, width: 0),
              InputField(
                  controller: emailController,
                  requiredText: 'Please enter an email',
                  hintText: 'Email'),
              const SizedBox(height: 15, width: 0),
              PasswordField(passwordController: passwordController),
              const SizedBox(height: 15, width: 0),
              const RoundedButton(
                textColor: appBarColor,
                color: darkGreen,
                text: 'Sign Up',
                fontSize: 16,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              const SizedBox(height: 15, width: 0),
              const Center(
                child: Text(
                  'Or Sign Up With',
                  style: TextStyle(
                    color: textPrimary,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(height: 15, width: 0),
              const GoogleLoginButton(),
              const SizedBox(height: 15, width: 0),
              const HaveAnAccount(haveText: 'Already', buttonText: 'Sign In'),
            ],
          ),
        ),
      )),
    );
  }
}