import 'package:flutter/material.dart';
import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';

class ItemCard extends StatelessWidget {
  final String url;
  final void Function()? onTap;
  final String name;
  final String desc;
  final bool? small;
  const ItemCard({
    Key? key,
    required this.url,
    this.onTap,
    required this.name,
    required this.desc,
    this.small = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: small == true ? 100 : 150,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.kcLightGreyColor,
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              ),
            ),
          ),
          AppSpacing.verticalSpaceVerySmall,
          Text(
            name,
            style: AppTextStyles.headerFourStyle,
          ),
          AppSpacing.verticalSpaceTiny,
          Text(
            desc,
            style: AppTextStyles.bodyTwoStyle,
          )
        ],
      ),
    );
  }
}
