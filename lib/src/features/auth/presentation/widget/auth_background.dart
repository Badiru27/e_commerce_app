import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  final String title;
  const AuthBackground({Key? key, required this.child, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: AppSpacing.screenHeight(context) * 0.05,
        ),
        SizedBox(
          height: AppSpacing.screenHeight(context) * 0.93,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(title,
                    style: AppTextStyles.headerOneStyle
                        .copyWith(color: AppColors.kcWhiteColor)),
              ),
              Container(
                height: AppSpacing.screenHeight(context) * 0.8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: AppColors.kcWhiteColor,
                ),
                child: child,
              )
            ],
          ),
        ),
      ],
    );
  }
}
