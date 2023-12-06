import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/components/custom_text_form_feild.dart';
import '../../../../../core/methods/pass_validate/pass_validate.dart';
import '../../../../../core/methods/validate_email/vaildate_email.dart';

class CustomTwoTextFromField extends StatelessWidget {
  CustomTwoTextFromField({
    super.key,
    required this.controller1,
    required this.controller2,
    required this.label1,
    required this.label2,
    required this.isPass,
    required this.isPass2,
    this.prefixIcon1,
    this.prefixIcon2,
  });
  final TextEditingController controller1;
  final TextEditingController controller2;
  final String label1;
  final String label2;
  final bool isPass;
  final bool isPass2;
  IconData? prefixIcon1;
  IconData? prefixIcon2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextFormField(
          isPassword: isPass,
          maxLine: 1,
          controller: controller1,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          label: label1,
          validate: (value) {
            if (value!.isEmpty) {
              return "should enter $label2";
            } else if (!isEmailValid(value)) {
              return 'email must contain @ & .com';
            } else {
              return null;
            }
          },
          prefixIcon: prefixIcon1,
          edgeInsetsGeometry: const EdgeInsets.symmetric(
            vertical: 15,
          ),
        ),
        const Gap(20),
        CustomTextFormField(
          isPassword: isPass2,
          maxLine: 1,
          controller: controller2,
          validate: (value) {
            if (value!.isEmpty) {
              return "should enter $label2";
            } else if (!isPasswordValid(value)) {
              return 'Password must include: 0-9, A-Z, a-z, and special characters';
            } else {
              return null;
            }
          },
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          label: label2,
          prefixIcon: prefixIcon2,
          edgeInsetsGeometry: const EdgeInsets.symmetric(
            vertical: 15,
          ),
        ),
      ],
    );
  }
}
