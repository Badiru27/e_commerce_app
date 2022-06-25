import 'package:flutter/material.dart';

import 'package:e_commerce_app/src/core/constants/app_color.dart';

class OrangeIcon extends StatelessWidget {
  final IconData icon;
  const OrangeIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.kcPrimaryColor,
        ),
        child: Icon(
          icon,
          color: AppColors.kcWhiteColor,
        ));
  }
}
