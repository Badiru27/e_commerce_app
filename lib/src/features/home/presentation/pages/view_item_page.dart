import 'package:e_commerce_app/src/shared/app_button.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';

class ItemViewPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;
  const ItemViewPage({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppSpacing.screenHeight(context) * 0.45,
            width: double.infinity,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 52.0, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.kcWhiteColor,
                    ),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 34,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.kcWhiteColor,
                    ),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.heart_broken,
                        size: 34,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // AppSpacing.verticalSpaceMedium,
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.headerTwoStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    price,
                    style: AppTextStyles.headerFourStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kcGreyColor,
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    'Description',
                    style: AppTextStyles.headerTwoStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    description,
                    style: AppTextStyles.headerFourStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kcGreyColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
            child: AppButton(text: 'Add to cart', onTap: () {}),
          ),
        ],
      ),
    );
  }
}
