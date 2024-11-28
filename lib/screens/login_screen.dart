import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/social_button.dart';
import 'signup_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                'Welcome Back',
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
                      isSelected: true,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      text: 'Sign Up',
                      isSelected: false,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              const CustomTextField(
                hintText: 'Password',
                isPassword: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                  ),
                ),
              ),
              CustomButton(
                text: 'Login',
                isSelected: true,
                onPressed: () {
                  // Show success message using GetX Snackbar
                  Get.snackbar(
                    'Success',
                    'You have logged in successfully!',
                    snackPosition: SnackPosition.TOP,
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(color: Colors.grey.shade400),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Or login with',
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Divider(color: Colors.grey.shade400),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SocialButton(
                icon: 'assets/apple.png',
                text: 'Continue with Apple',
              ),
              const SizedBox(height: 10),
              const SocialButton(
                icon: 'assets/google.png',
                text: 'Continue with Google',
              ),
              const SizedBox(height: 10),
              const SocialButton(
                icon: 'assets/facebook.png',
                text: 'Continue with Facebook',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
