import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String text;

  const SocialButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar(
          'Success',
          'You have logged in successfully!',
          snackPosition: SnackPosition.TOP,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.grey.shade300),
        ),
        elevation: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
