import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizantalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "نسيت كلمة المرور؟",
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomButton(onPressed: () {}, text: ("تسجيل دخول")),
            const SizedBox(height: 33),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'لا تملك حساب؟',
                    style: TextStyles.semiBold16.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold16.copyWith(
                      color: const Color(0xFF616A6B),
                    ),
                  ),
                  TextSpan(
                    text: "قم بانشاء حساب",
                    style: TextStyles.semiBold16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
