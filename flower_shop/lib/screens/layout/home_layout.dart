import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../resources/color_manager.dart';

import '../../resources/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);

        return Scaffold(
          backgroundColor: ColorManager.white,
          body: cubit.screen[currentIndex],
          bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 5.0,
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () => cubit.changecurrentIndex(0),
                      icon: Icon(
                        Icons.home,
                        color: currentIndex == 0
                            ? ColorManager.primary
                            : Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: IconButton(
                        onPressed: () => cubit.changecurrentIndex(1),
                        icon: Icon(
                          Icons.favorite,
                          color: currentIndex == 1
                              ? ColorManager.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: IconButton(
                        onPressed: () => cubit.changecurrentIndex(3),
                        icon: Icon(
                          Icons.local_shipping,
                          color: currentIndex == 3
                              ? ColorManager.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => cubit.changecurrentIndex(4),
                      icon: Icon(Icons.person,
                          color: currentIndex == 4
                              ? ColorManager.primary
                              : Colors.grey),
                    ),
                  ),
                ],
              )),
          floatingActionButton: FloatingActionButton(
              backgroundColor: ColorManager.primary,
              onPressed: () {
                cubit.changecurrentIndex(2);
              },
              isExtended: true,

              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Icon(
                      Icons.local_grocery_store,
                      color: Colors.white,
                      size: 31,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    child:  Text('$countCart'),
                  )
                ],
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
