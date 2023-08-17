import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../controller/cubit.dart';
import '../../models/flower_model.dart';

class CatItemBuild extends StatelessWidget {
  const CatItemBuild(
      {super.key,
      required this.cubit,
      required this.title,
      required this.list});
  final HomeCubit cubit;
  final String title;
  final List<FlowerModel> list;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 35) / 2;
    final double itemWidth = size.width / 2;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  cubit.changecurrentbool(!cubit.isCat);
                  cubit.catIndex = -1;
                },
                icon: const Icon(Icons.arrow_back_ios)),
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: ColorManager.black)),
            const SizedBox(
              width: 100,
            )
          ],
        ),
        SizedBox(
          height: 500,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: list.length,
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
                    border: Border.all(color: ColorManager.secondary3),
                    color: ColorManager.secondary.withOpacity(0.3),
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                list[index].image,
                                height: 150,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () => cubit.faver(list, index),
                              icon: Icon(
                                list[index].isFavorated
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: list[index].isFavorated
                                    ? Colors.red
                                    : Colors.black,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(list[index].title,
                          style: TextStyle(
                              fontSize: 16, color: ColorManager.black)),
                      Text(
                        list[index].type,
                        style:
                            TextStyle(fontSize: 14, color: ColorManager.grey1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${list[index].price} JD',
                            ),
                            InkWell(
                              onTap: () => cubit.cartList(list, index),
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
        ),
      ],
    );
  }
}
