import 'package:flower_shop/screens/home_screen/controller/cubit.dart';
import 'package:flower_shop/screens/home_screen/controller/states.dart';
import 'package:flower_shop/screens/home_screen/models/flower_model.dart';
import 'package:flower_shop/screens/home_screen/view/widgets/cat_item_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../notifications_screen/notifications_screen.dart';
import '../../repository/home_repositry.dart';
import '../widgets/flower_type_widget.dart';
import '../widgets/home_widget.dart';
import '../widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit.get(context).isCat = false;
    HomeCubit.get(context).catIndex = -1;
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: ColorManager.lightGrey,
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
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deliver to',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: ColorManager.primary,
                      ),
                      const Text(
                        'Amman',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SearchBarWidget(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: [
                      FlowerTypeWidget(cubit: cubit),
                      cubit.isCat == false
                          ?  HomeWidget(cubit: cubit,)
                          : CatItemBuild(
                              cubit: cubit,
                              list: FlowerModel.list[cubit.catIndex],
                              title: '${catTitle[cubit.catIndex]['title']}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
