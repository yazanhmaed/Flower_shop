import 'package:flower_shop/screens/favorite_screen/controller/cubit.dart';
import 'package:flower_shop/screens/favorite_screen/controller/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../notifications_screen/notifications_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 100) / 2;
    final double itemWidth = size.width / 2;
    return BlocProvider(
      create: (context) => FavoriteCubit(),
      child: BlocConsumer<FavoriteCubit, FavoriteState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = FavoriteCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorManager.white,
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
                'My Favorites',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              elevation: 0,
            ),
            body: GridView.builder(
              itemCount: fav.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 115,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: ColorManager.secondary3.withOpacity(0.5)),
                      color: ColorManager.lightGrey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            const SizedBox(
                              width: double.infinity,
                            ),
                            Center(
                              child: Image.asset(
                                fav[index].image,
                                height: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () => cubit.favList(index),
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(fav[index].title,
                            style: TextStyle(
                                fontSize: 16, color: ColorManager.black)),
                        Text(
                          fav[index].type,
                          style: TextStyle(
                              fontSize: 14, color: ColorManager.grey1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${fav[index].price} JD',
                              ),
                              InkWell(
                                onTap: () => cubit.cartList(fav, index),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorManager.primary),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
