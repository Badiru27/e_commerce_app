import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';


class LandmarkAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? center;
  final Color? color;
  final Function()? onTap;
  const LandmarkAppBar(
      {required this.title, this.onTap, this.center = false, this.color = AppColors.kcWhiteColor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.headerTwoStyle
                .copyWith(color: AppColors.kcBlackColor),
          ),
          AppSpacing.verticalSpaceTiny,
          if (center == false)
            Container(
              color: AppColors.kcPrimaryColor,
              height: AppSpacing.screenHeight(context) * 0.01,
              width: AppSpacing.screenWidth(context) * 0.2,
            )
        ],
      ),
      elevation: 0,
      centerTitle: center,
      leading: onTap != null
          ? GestureDetector(
              onTap: onTap,
              child: Container(
                constraints: const BoxConstraints(minHeight: 40, maxHeight: 40),
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.kcBlackColor,
                ),
              ))
          : Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);
}

const double appBarHeight = 56;
