import 'package:flower_shop/resources/widgets/button_custom.dart';
import 'package:flower_shop/screens/home_screen/controller/cubit.dart';
import 'package:flower_shop/screens/home_screen/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../notifications_screen/notifications_screen.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ColorManager.lightGrey,
            centerTitle: false,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Container(
                  width: 30,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                    onPressed: () =>
                        navigateTo(context, const NotificationsScreen()),
                    icon: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CircleAvatar(
                          maxRadius: 4,
                          backgroundColor: ColorManager.primary,
                        ),
                        const Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
              )
            ],
            title: const Text(
              'Filter',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Price Range',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '\$${cubit.rangStart.floor()} - \$${cubit.rangEnd.floor()}',
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                RangeSlider(
                  values: RangeValues(cubit.rangStart, cubit.rangEnd),
                  onChanged: (val) {
                    cubit.changeRangeStr(val.start, val.end);
                  },
                  min: 50,
                  max: 5000,
                  activeColor: ColorManager.primary,
                  inactiveColor: ColorManager.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Discount',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '${cubit.slider.floor()}%',
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Slider(
                  value: cubit.slider,
                  onChanged: (value) {
                    cubit.changeSlider(value);
                  },
                  inactiveColor: ColorManager.grey,
                  activeColor: ColorManager.primary,
                  min: 0,
                  max: 100,
                  label: '${cubit.slider}%',
                ),
                const Text(
                  'Category',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                Center(
                  child: ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 4,
                    labels: const ['Pot', 'Iris', 'Botanical', 'Rose'],
                    inactiveBgColor: ColorManager.lightGrey,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
                const Text(
                  'Location',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                Center(
                  child: ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 3,
                    labels: const ['1 Km', '>10 Km', '<10 Km'],
                    inactiveBgColor: ColorManager.lightGrey,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
                const Text(
                  'Color',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                Center(
                  child: ToggleSwitch(
                    initialLabelIndex: 2,
                    totalSwitches: 3,
                    labels: const ['Red', 'White', 'yellow'],
                    inactiveBgColor: ColorManager.lightGrey,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
                Center(
                  child: SizedBox(
                      width: 326,
                      height: 48,
                      child: ButtomCustom(
                        text: 'Search',
                        color: ColorManager.primary,
                        onPressed: () {},
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
