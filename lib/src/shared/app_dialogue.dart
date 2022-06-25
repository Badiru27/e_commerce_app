import 'package:e_commerce_app/src/core/constants/app_asset_path.dart';
import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:e_commerce_app/src/shared/app_button.dart';
import 'package:flutter/material.dart';


class AppSuccessDialogue extends StatelessWidget {
  const AppSuccessDialogue({
    Key? key,
    required this.title,
    required this.content,
    required this.onClose,
  }) : super(key: key);

  final String title;
  final String content;
  final Function() onClose;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       // Image.asset(AppAssetPath.successIcon),
        AppSpacing.verticalSpaceExtraLarge,
        Text(title,
            style: AppTextStyles.headerThreeStyle
                .copyWith(color: AppColors.kcPrimaryColor)),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            content,
            style: AppTextStyles.bodyTwoStyle
                .copyWith(color: AppColors.kcMediumGreyColor),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: GestureDetector(
            onTap: onClose,
            child: const AppButton(text: 'Close')),
        )
      ],
    );
  }
}
