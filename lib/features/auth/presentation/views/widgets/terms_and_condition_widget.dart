import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_check_box.dart';

class TermsAndConditionWidget extends StatefulWidget {
  const TermsAndConditionWidget({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditionWidget> createState() =>
      _TermsAndConditionWidgetState();
}

class _TermsAndConditionWidgetState extends State<TermsAndConditionWidget> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(1, 0),
      child: Row(
        children: [
          CustomCheckBox(
            isChecked: isTermsAccepted,
            onChecked: (value) {
              isTermsAccepted = value;
              widget.onChanged(value);
              setState(() {});
            },
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                    style: TextStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  TextSpan(
                    text: 'الشروط والأحكام',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  const TextSpan(text: ' ', style: TextStyles.semiBold13),
                  TextSpan(
                    text: 'الخاصة',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  const TextSpan(text: ' ', style: TextStyles.semiBold13),
                  TextSpan(
                    text: 'بنا',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
