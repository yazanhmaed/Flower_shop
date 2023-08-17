import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../resources/color_manager.dart';
import '../../controller/cubit.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({
    super.key,
    required this.cubit,
  });

  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      animate: true,
      minHeight: 40,
      minWidth: 160.0,
      cornerRadius: 30.0,
      activeBgColors: [
        [ColorManager.primary],
        [ColorManager.primary]
      ],
      borderColor: [
        ColorManager.white.withOpacity(0.7),
        ColorManager.white.withOpacity(0.7),
      ],
      borderWidth: 10,
      activeFgColor: Colors.white,
      inactiveBgColor: ColorManager.lightGrey,
      inactiveFgColor: Colors.black,
      initialLabelIndex: cubit.positive,
      totalSwitches: 2,
      labels: const ['Login', 'Sign Up'],
      radiusStyle: true,
      onToggle: (index) {
        cubit.changecurrentSwitch(posit: index!);
        print(index);
      },
    );
  }
}
