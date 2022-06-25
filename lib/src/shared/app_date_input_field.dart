import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class AppDatePicker extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Function(DateTime?)? onChanged;
  final String? Function(DateTime?)? validator;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const AppDatePicker(
      {Key? key,
      required this.label,
      this.controller,
      this.keyboardType,
      this.obscureText,
      this.validator,
      this.initialDate,
      this.firstDate,
      this.lastDate,
      this.onChanged})
      : super(key: key);

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: color),
      );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: const ColorScheme.light(
          primary: AppColors.kcPrimaryColor, // header background color
          onPrimary: AppColors.kcWhiteColor, // header text color
          onSurface: AppColors.kcBlackColor, // body text color
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: AppColors.kcPrimaryColor // button text color
          ),
        ),
      ),
      child:   FormBuilderDateTimePicker(
      
      name: label,
      style: AppTextStyles.headerThreeStyle,
      cursorColor: AppColors.kcPrimaryColor,
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      format: DateFormat('dd-MM-yyyy'),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputType: InputType.date,
      decoration: InputDecoration(
        label: Text(
          label,
          style: AppTextStyles.headerThreeStyle
              .copyWith(fontWeight: FontWeight.w400),
        ),
        enabledBorder: _border(AppColors.kcMediumGreyColor),
        focusedBorder: _border(AppColors.kcPrimaryColor),
        border: _border(AppColors.kcMediumGreyColor),
      ),
    ),
    );
    
    
  
  }
}
