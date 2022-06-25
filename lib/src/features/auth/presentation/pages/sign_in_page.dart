import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:e_commerce_app/src/features/auth/presentation/pages/sign_up.dart';
import 'package:e_commerce_app/src/features/auth/presentation/widget/auth_background.dart';
import 'package:e_commerce_app/src/features/auth/presentation/widget/orange_icon.dart';
import 'package:e_commerce_app/src/shared/app_button.dart';
import 'package:e_commerce_app/src/shared/app_input_field.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kcPrimaryColor,
      body: AuthBackground(
        title: 'Sign Up',
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Text('Welcome Back!',
                  style: AppTextStyles.headerOneStyle
                      .copyWith(color: AppColors.kcPrimaryColor)),
             AppSpacing.verticalSpaceSmall,         
             const Text('Thanks for combing back'),
             AppSpacing.verticalSpaceExtraLarge,
             Row(
               children: const [
                OrangeIcon(icon: Icons.email),
                AppSpacing.horizontalSpaceSmall,
                 Expanded(child: AppInputField(label: 'Email')),
               ],
             ),
             AppSpacing.verticalSpaceSmall,
             AppSpacing.verticalSpaceSmall,
             Row(
               children: const [
                  OrangeIcon(icon: Icons.lock),
                    AppSpacing.horizontalSpaceSmall,
                Expanded(child:  AppInputField(label: 'Password')),
               ],
             ),
             SizedBox(
                height: AppSpacing.screenHeight(context) * 0.1,
              
             ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 AppButton(text: 'Sign In', onTap: () {
                                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));

                 }),
                    AppSpacing.verticalSpaceMedium,
                    RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: AppTextStyles.bodyTwoStyle
                                .copyWith(color: AppColors.kcMediumGreyColor),
                            children: [
                          TextSpan(
                            text: ' Sign Up',
                            style: AppTextStyles.bodyTwoStyle
                                .copyWith(color: AppColors.kcPrimaryColor),
                          )
                        ])),
              ],
             ),
            
            ],
          ),
        ),)
    );
  }
}
