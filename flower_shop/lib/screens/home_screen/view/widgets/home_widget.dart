import 'package:flower_shop/screens/home_screen/view/widgets/slider_offer_widget.dart';
import 'package:flower_shop/screens/home_screen/view/widgets/top_rated_widget.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../special_offers/special_offers_screen.dart';
import '../../controller/cubit.dart';
import 'near_to_you_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.cubit,
  });
  final HomeCubit cubit;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 250) / 3;

    return Column(
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Special Offers',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            TextButton(
                onPressed: () =>
                    navigateTo(context, const SpecialOffersScreen()),
                child: Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: ColorManager.primary),
                ))
          ],
        ),
        const SizedBox(
          height: 150,
          child: SliderOffersWidget(),
        ),
        const SizedBox(
          height: 9,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Top Rated',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: ColorManager.primary),
                ))
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: itemHeight,
          child: TopRatedWidget(cubit: cubit),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Near to you',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: ColorManager.primary),
                ))
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: itemHeight,
          child: NearToYouWidget(cubit: cubit),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
