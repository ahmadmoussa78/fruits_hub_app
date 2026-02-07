import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.textInputType,
  });
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintStyle: TextStyles.bold13.copyWith(color: const Color(0xff949D9E)),
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Color(0xffE6E9E9)),
    );
  }
}
