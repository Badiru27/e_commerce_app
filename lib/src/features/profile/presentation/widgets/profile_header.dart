

import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final String image;
  final Function() updateProfile;
  const ProfileHeader({
    Key? key,
    required this.name,
    required this.email,
    required this.image,
    required this.updateProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipOval(
              child: Container(
                height: 130,
                width: 130,
                color: AppColors.kcLightGreyColor,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 1,
              child: ClipOval(
                child: GestureDetector(
                  onTap: updateProfile,
                  child: Container(
                      color: AppColors.kcPrimaryColor,
                      height: 30,
                      width: 30,
                      child: const Icon(Icons.camera_alt, color: AppColors.kcWhiteColor,)),
                ),
              ),
            ),
          ],
        ),
        AppSpacing.verticalSpaceLarge,
        Text(
          name,
          style: AppTextStyles.headerThreeStyle
              .copyWith(color: AppColors.kcPrimaryColor),
        ),
        AppSpacing.verticalSpaceTiny,
        Text(
          email,
          style:
              AppTextStyles.bodyOneStyle.copyWith(color: AppColors.kcGreyColor),
        ),
      ],
    );
  }
}
