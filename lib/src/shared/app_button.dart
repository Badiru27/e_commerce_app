import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color? borderColor;
  final bool isBusy;
  const AppButton({
    Key? key,
    this.onTap,
    this.backgroundColor = AppColors.kcPrimaryColor,
    this.textColor = AppColors.kcWhiteColor,
    this.isBusy = false,
    this.borderColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          color: backgroundColor,
        ),
        child: isBusy
            ? CircularProgressIndicator(
                color: backgroundColor == AppColors.kcPrimaryColor
                    ? AppColors.kcWhiteColor
                    : AppColors.kcPrimaryColor,
              )
            : Text(
                text,
                style: AppTextStyles.headerFourStyle.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
