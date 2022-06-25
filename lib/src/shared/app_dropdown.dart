import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppDropDown extends StatelessWidget {
  final List<String> items;
  final String label;
  final bool showIcon;
  final String? value;
  final String name;
  final Function(String?) onChanged;
  final Function(String?) onSaved;
  final Function()? onReset;
  final String? Function(String?)? validator;
  final String initialValue;

  const AppDropDown({
    Key? key,
    required this.items,
    required this.label,
    this.showIcon = false,
    this.value,
    required this.name,
    required this.onChanged,
    required this.onSaved,
    this.onReset,
    this.validator,
    required this.initialValue,
  }) : super(key: key);

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: color),
      );

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<String>(
     alignment: Alignment.centerLeft,
      allowClear: true,
      name: name,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: initialValue,
      onChanged: onChanged,
      onSaved: onSaved,
      onReset: onReset,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTextStyles.headerThreeStyle
            .copyWith(fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColors.kcMediumGreyColor),
        ),
        enabledBorder: _border(AppColors.kcMediumGreyColor),
        focusedBorder: _border(AppColors.kcPrimaryColor),
        disabledBorder: _border(AppColors.kcMediumGreyColor),
      ),
      items: items
          .map((item) => DropdownMenuItem(
                value: item,
                child: Text(item),
              ))
          .toList(),
    );
  }
}
