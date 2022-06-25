import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:e_commerce_app/src/features/profile/presentation/widgets/profile_header.dart';
import 'package:e_commerce_app/src/shared/app_button.dart';
import 'package:e_commerce_app/src/shared/app_date_input_field.dart';
import 'package:e_commerce_app/src/shared/app_input_field.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kcWhiteColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Profile', style: AppTextStyles.headerThreeStyle),
        backgroundColor: AppColors.kcWhiteColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ProfileHeader(name: 'Badiru Sulaiomn', email: 'badiru@email.com', image: 'https://img.freepik.com/free-photo/happy-african-american-professional-manager-smiling-looking-camera-headshot-portrait_1163-5134.jpg?t=st=1656173150~exp=1656173750~hmac=958abc65186c5efecfdd4db8a92ef7a786fb61b023f2ebf220523bc8b5d461c7&w=1800', updateProfile:(){}),
                AppSpacing.verticalSpaceExtraLarge,
                  AppInputField(label: 'Full Name'),
                AppSpacing.verticalSpaceMedium,
                AppInputField(label: 'Phone Number'),
                AppSpacing.verticalSpaceMedium,
                AppDatePicker(label: 'Date of Birth'),
                AppSpacing.verticalSpaceMedium,
                AppInputField(label: 'Age'),
                 AppSpacing.verticalSpaceExtraLarge,
                 AppButton(text: 'Update Profile')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
