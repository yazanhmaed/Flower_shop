import 'package:flower_shop/screens/login_screen/view/widgets/signup.dart';
import 'package:flower_shop/screens/login_screen/view/widgets/toggle_widget.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../layout/home_layout.dart';
import '../../controller/cubit.dart';
import 'login.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.cubit,
  });

  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 265),
        height: 550,
        width: 365,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(20)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleWidget(cubit: cubit),
              cubit.positive == 0
                  ? LoginBuilder(
                      positive: cubit.positive,
                      onTap: () => {},
                      obscureText: cubit.obscureText,
                      onPressedobscureText: () =>
                          cubit.changeobscureText(),
                      emailController: cubit.emailController,
                      passwordController:
                          cubit.passwordController,
                      onPressed: () => navigateAndFinish(
                          context, const HomeLayoutScreen()),
                    )
                  : SignUpBuilder(
                      positive: cubit.positive,
                      obscureText: cubit.obscureText,
                      onPressedobscureText: () =>
                          cubit.changeobscureText(),
                      nameController: cubit.nameController,
                      emailController: cubit.emailController,
                      passwordController:
                          cubit.passwordController,
                      onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}


