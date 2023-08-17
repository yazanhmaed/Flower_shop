import 'package:carousel_slider/carousel_slider.dart';
import 'package:flower_shop/resources/color_manager.dart';
import 'package:flower_shop/screens/home_screen/models/flower_model.dart';
import 'package:flutter/material.dart';

import '../../controller/cubit.dart';

class SliderOffersWidget extends StatelessWidget {
  const SliderOffersWidget({
    super.key,
    required this.cubit,
  });
  final HomeCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext ctx, int index, int realIndex) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: FlowerModel.offers[index],
                ),
              );
            },
            options: CarouselOptions(
              height: 180,
              initialPage: 0,
              onPageChanged: (index, reason) => cubit.changeimageSlider(index),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              containerC(0),
              containerC(1),
              containerC(2),
            ],
          ),
        ),
      ],
    );
  }

  AnimatedContainer containerC(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      duration: const Duration(milliseconds: 300),
      width: cubit.imageSlider == index ? 20 : 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color:
            cubit.imageSlider == index ? ColorManager.primary : Colors.black54,
      ),
    );
  }
}
