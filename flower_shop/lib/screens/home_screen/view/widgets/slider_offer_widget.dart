import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

import '../../../../resources/color_manager.dart';
import '../../../special_offers/special_offers.dart';

class SliderOffersWidget extends StatelessWidget {
  const SliderOffersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      indicatorConfig: IndicatorConfig(
        colorActiveIndicator: ColorManager.primary,
        spaceBetweenIndicator: 3,
      ),
      isShowNextBtn: false,
      isShowDoneBtn: false,
      isShowPrevBtn: false,
      isShowSkipBtn: false,
      autoScrollInterval: const Duration(seconds: 1),
      listCustomTabs: const [
        SpecialOffers(
          dis: '30',
          title: 'Special Deal\nFor October!',
          image: 'assets/images/sp1.png',
          color: Colors.green,
        ),
        SpecialOffers(
          dis: '50',
          title: 'Special Deal\nFor October!',
          image: 'assets/images/sp2.png',
          color: Colors.amber,
        ),
        SpecialOffers(
          dis: '25',
          title: 'Special Deal\nFor October!',
          image: 'assets/images/sp3.png',
          color: Colors.blueGrey,
        ),
        SpecialOffers(
          dis: '25',
          title: 'Special Deal\nFor October!',
          image: 'assets/images/sp4.png',
          color: Colors.red,
        ),
      ],
    );
  }
}