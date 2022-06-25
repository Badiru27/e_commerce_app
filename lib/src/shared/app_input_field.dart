import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppInputField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isPassword;
  final VoidCallback? onPasswordVisibilityToggled;
  final int? maxLength;

  const AppInputField({
    Key? key,
    required this.label,
    this.controller,
    this.keyboardType,
    this.obscureText,
    this.validator,
    this.onChanged,
    this.isPassword = false,
    this.onPasswordVisibilityToggled,
    this.maxLength
  }) : super(key: key);

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: color),
      );

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: label,
      style: AppTextStyles.headerThreeStyle,
      cursorColor: AppColors.kcPrimaryColor,
      controller: controller,
      validator: validator,
      maxLength: maxLength,
      
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      
      decoration: InputDecoration(
        counterText: "",
        label: Text(
          label,
          style: AppTextStyles.headerThreeStyle
              .copyWith(fontWeight: FontWeight.w400),
        ),
        enabledBorder: _border(AppColors.kcMediumGreyColor),
        focusedBorder: _border(AppColors.kcPrimaryColor),
        border: _border(AppColors.kcMediumGreyColor),
        suffixIcon: !isPassword ? null : IconButton(
          onPressed: onPasswordVisibilityToggled,
          icon: Icon(
            obscureText == true ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ),
    );
  }
}
