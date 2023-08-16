import 'package:flower_shop/screens/my_cart/controller/cubit.dart';
import 'package:flower_shop/screens/my_cart/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../notifications_screen/notifications_screen.dart';
import '../widgets/cart_build.dart';
import '../widgets/empty_card.dart';
import 'history_screen.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyCartCubit()..addCountItem()..addItemTotal(),
      child: BlocConsumer<MyCartCubit, MyCartState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MyCartCubit.get(context);
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: ColorManager.lightGrey,
                actions: [
                  Container(
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
                  const SizedBox(
                    width: 5,
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
                bottom: TabBar(
                    labelPadding: const EdgeInsets.all(10),
                    labelColor: ColorManager.primary,
                    dividerColor: ColorManager.primary,
                    indicatorColor: ColorManager.primary,
                    overlayColor: MaterialStatePropertyAll(
                        ColorManager.primary.withOpacity(0.2)),
                    tabs: const [
                      Tab(
                        icon: Text(
                          'Cart',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          'History',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      )
                    ]),
              ),
              body: TabBarView(children: [
                cartsList.isNotEmpty
                    ?  CartBuild(
                        cubit: cubit,
                       
                      )
                    : const EmptyCart(),
                const History(),
              ]),
            ),
          );
        },
      ),
    );
  }
}
