import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:e_commerce_app/src/features/cart/presentation/widgets/list_item.dart';
import 'package:e_commerce_app/src/shared/app_button.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kcWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.kcPrimaryColor,
        title: const Text('Add to Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: AppSpacing.screenHeight(context) * 0.65,
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: ((context, index) => ListItemCardWidget(
                    price: '\$200',
                    date: '20-20-22',
                    title: "Shoe",
                    image:
                        'https://ng.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/52/4925621/1.jpg?5674'))),
          ),
          Container(
            height: AppSpacing.screenHeight(context) * 0.2,
            decoration: const BoxDecoration(
              color: AppColors.kcWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: AppColors.boxShadowColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Total Items: 3', style: AppTextStyles.headerFourStyle,),
                      Spacer(),
                      Text(
                        'Total Price: \$5000',
                        style: AppTextStyles.headerFourStyle,
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceMedium,
                  AppButton(text: 'Continue')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
