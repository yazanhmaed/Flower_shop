import 'package:flower_shop/screens/login_screen/view/screens/login_screen.dart';
import 'package:flower_shop/screens/on_boarding/controller/cubit.dart';
import 'package:flower_shop/screens/on_boarding/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../../resources/network/local/cache_helper.dart';
import '../../../../resources/string_manager.dart';
import '../../../../resources/styles_manager.dart';
import '../../../../resources/values_manager.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
 void  submit() {
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = OnBoardingCubit.get(context);
          return Scaffold(
            backgroundColor: ColorManager.white,
            appBar: AppBar(
              backgroundColor: ColorManager.white,
              elevation: 0,
              actions: [
                TextButton(
                    onPressed: () {
                      submit();
                    },
                    child: Text(
                      AppString.onBorderSKIP,
                      style: getSemiBoldStyle(
                          color: ColorManager.black, fontSize: AppSize.s15),
                    ))
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p30),
              child: OnBoardingWidget(cubit: cubit),
            ),
          );
        },
      ),
    );
  }
}
