import 'package:flutter/material.dart';

import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:e_commerce_app/src/shared/app_shadow_container.dart';

class ListItemCardWidget extends StatelessWidget {
  final String price;
  final String date;
  final String title;
  final String image;
  const ListItemCardWidget({
    Key? key,
    required this.price,
    required this.date,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AppShadowContainer(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: Image.network(
                 image,
                  fit: BoxFit.cover,
                ),
              ),
              AppSpacing.horizontalSpaceLarge,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: AppTextStyles.headerFourStyle),
                  AppSpacing.verticalSpaceTiny,
                  Text(
                    date,
                    style: AppTextStyles.bodyOneStyle
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  AppSpacing.verticalSpaceTiny,
                  Text(
                    'Active',
                    style: AppTextStyles.bodyOneStyle.copyWith(
                        color: AppColors.kcGreenColor,
                        fontWeight: FontWeight.normal),
                  )
                ],
              )
            ],
          ),
          Text(price,
              style: AppTextStyles.headerFourStyle
                  .copyWith(color: AppColors.kcPrimaryColor)),
        ],
      )),
    );
  }
}
