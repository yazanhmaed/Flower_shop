import 'package:flower_shop/screens/on_boarding/controller/cubit.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../../resources/network/local/cache_helper.dart';
import '../../../../resources/widgets/button_custom.dart';
import '../../../login_screen/view/screens/login_screen.dart';
import '../../repository/on_boarding_repository.dart';
import 'boarding_item.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key, required this.cubit});

  final OnBoardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    void submit() {
      navigateAndFinish(context, const LoginScreen());
      CacheHelper.seveData(key: 'onBoarding', value: true).then((value) {
        if (value) {
          return navigateAndFinish(context, const LoginScreen());
        }
        // print(value);
      }).catchError((onError) {
        // print(onError.toString());
      });
    }

    var boardController = PageController();

    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: boardController,
            onPageChanged: (int index) {
              if (index == boarding.length - 1) {
                cubit.changeBool(true);
              } else {
                cubit.changeBool(false);
              }
            },
            itemBuilder: (context, index) => BuildBoardingItem(
              model: boarding[index],
            ),
            itemCount: boarding.length,
          ),
        ),
        SizedBox(
            width: 325,
            height: 50,
            child: ButtomCustom(
              text: cubit.isLast == false ? 'Continue' : 'Get Started',
              onPressed: () {
                if (cubit.isLast) {
                  submit();
                } else {
                  boardController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }
              },
              color: ColorManager.primary,
              textStyle: const TextStyle(fontSize: 20, color: Colors.white),
            )),
        const SizedBox(
          height: 71,
        )
      ],
    );
  }
}
