import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              Image.asset(
                'assets/house.jpg',
                height: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Login',
                      isSelected: false,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      text: 'Sign Up',
                      isSelected: true,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'Full Name',
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                hintText: 'Phone Number',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                hintText: 'Agency Name',
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Sign Up',
                isSelected: true,
                onPressed: () {
                  Get.snackbar(
                    'Success',
                    'You have Signed Up successfully!',
                    snackPosition: SnackPosition.TOP,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
