import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/app_text_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "ابحث عن.......",
            hintStyle: TextStyles.regular13.copyWith(
              color: const Color(0xFF949D9E),
            ),
            prefixIcon: SizedBox(
              width: 20,
              child: Center(
                child: SvgPicture.asset(Assets.assetsImagesSearchIcon),
              ),
            ),
            suffixIcon: SizedBox(
              width: 20,
              child: Center(child: SvgPicture.asset(Assets.assetsImagesFilter)),
            ),
            filled: true,
            fillColor: Colors.white,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 0.2, color: Color(0xffE6E9E9)),
    );
  }
}
