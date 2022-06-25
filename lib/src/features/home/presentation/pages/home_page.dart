import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_spacing.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';
import 'package:e_commerce_app/src/features/home/presentation/widgets/advert_banner.dart';
import 'package:e_commerce_app/src/features/home/presentation/widgets/small_item_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final adverts = <Advert>[
      Advert(
          title: '10 Years Anniversary',
          imageUrl:
              'https://ng.jumia.is/cms/0-6-anniversary/2022/designs/live-now_712x384.gif'),
      Advert(
          title: '70% off sale',
          imageUrl:
              'https://ng.jumia.is/cms/0-6-anniversary/2022/brand-days/june-25-defacto/defacto_slider_FS.jpg'),
    ];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppSpacing.screenHeight(context) * 0.01,
            ),
            Text('Ecommerce',
                style: AppTextStyles.headerOneStyle.copyWith(fontSize: 32)),
            AppSpacing.verticalSpaceSmall,
            AdvertBanner(adverts: adverts),
            AppSpacing.verticalSpaceExtraLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Products',
                    style: AppTextStyles.headerFourStyle
                        .copyWith(color: AppColors.kcPrimaryColor)),
                Text('See All',
                    style: AppTextStyles.headerFourStyle
                        .copyWith(color: AppColors.kcPrimaryColor)),
              ],
            ),
            AppSpacing.verticalSpaceSmall,
            SizedBox(
              height: 200,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ItemCard(
                  url:
                      'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
                  name: 'Burger',
                  desc: 'Burger',
                ),
                separatorBuilder: (_, __) => AppSpacing.horizontalSpaceSmall,
                itemCount: 5,
              ),
            ),
            AppSpacing.verticalSpaceExtraLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Featured Products',
                    style: AppTextStyles.headerFourStyle
                        .copyWith(color: AppColors.kcPrimaryColor)),
                Text('See All',
                    style: AppTextStyles.headerFourStyle
                        .copyWith(color: AppColors.kcPrimaryColor)),
              ],
            ),
            AppSpacing.verticalSpaceSmall,
            SizedBox(
              height: 200,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ItemCard(
                  small: true,
                  url:
                      'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
                  name: 'Burger',
                  desc: 'Burger',
                ),
                separatorBuilder: (_, __) => AppSpacing.horizontalSpaceSmall,
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
