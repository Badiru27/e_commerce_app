import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:e_commerce_app/src/shared/app_button.dart';
import 'package:e_commerce_app/src/shared/app_date_input_field.dart';
import 'package:e_commerce_app/src/shared/app_input_field.dart';
import 'package:flutter/material.dart';

class UserDataPage extends StatelessWidget {
  const UserDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
               const SizedBox(height: 50,),
                 Text('Submit the form to continue',
                    style: AppTextStyles.headerOneStyle
                        .copyWith(color: AppColors.kcPrimaryColor)),
                AppSpacing.verticalSpaceTiny,
                const Text('This is for us to personalize your experience',),
                AppSpacing.verticalSpaceExtraLarge,
                AppInputField(label: 'Full Name'),
                AppSpacing.verticalSpaceMedium,
                AppInputField(label: 'Phone Number'),
                AppSpacing.verticalSpaceMedium,
                AppDatePicker(label: 'Date of Birth'),
                AppSpacing.verticalSpaceMedium,
                AppInputField(label: 'Age'),
                AppSpacing.verticalSpaceMedium,
              ],
            
            ),
            AppButton(text: 'Submit')
          ],
        ),
      ),
    );
  }
}
