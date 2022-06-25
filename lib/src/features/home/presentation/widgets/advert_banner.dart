import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/src/core/constants/app_color.dart';
import 'package:e_commerce_app/src/core/constants/app_text_style.dart';

class AdvertBanner extends StatelessWidget {
  const AdvertBanner({
    Key? key,
    required this.adverts,
  }) : super(key: key);

  final List<Advert> adverts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: CarouselSlider(
        items: adverts
            .map(
              (advert) => InkWell(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(advert.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.kcPrimaryColor.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      advert.title.toUpperCase(),
                      style: AppTextStyles.headerThreeStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: AppColors.kcWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          viewportFraction: 1.0,
          // onPageChanged: (index, reason) {
          //   controller.setCurrentIndex(index);
          // },
        ),
      ),
    );
  }
}

class Advert {
  final String title;
  final String imageUrl;

  Advert({
    required this.title,
    required this.imageUrl,
  });
}
