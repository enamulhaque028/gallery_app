import 'package:flutter/material.dart';

import '../config/constants/app_color.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onTapBtn;
  const CustomTextButton({
    super.key,
    required this.title,
    required this.onTapBtn,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
        onTap: onTapBtn,
        borderRadius: const BorderRadius.all(
          Radius.circular(31),
        ),
        child: Ink(
          height: 48,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: AppColor.kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(31),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: AppColor.kBlackColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
