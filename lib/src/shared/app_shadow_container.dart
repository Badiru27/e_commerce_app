import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppShadowContainer extends StatelessWidget {
  final Widget child;
  final Color? sideBorder;
  final EdgeInsetsGeometry? padding;
  const AppShadowContainer({
    Key? key,
    required this.child,
    this.sideBorder,
    this.padding,
  }) : super(key: key);
    

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.kcWhiteColor,
        boxShadow: AppColors.boxShadowColor,
        gradient: sideBorder == null
            ? null
            : LinearGradient(
                stops: const [0.98, 0.02], colors: [Colors.white, sideBorder!]),
      ),
      child: Padding(
        padding: padding?? const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: child,
      ),
    );
  }
}
