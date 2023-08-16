import 'package:flower_shop/screens/home_screen/controller/cubit.dart';
import 'package:flutter/material.dart';

import '../../models/flower_model.dart';
import 'home_item.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({
    super.key,
    required this.cubit,
  });
  final HomeCubit cubit;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        width: 30,
      ),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: FlowerModel.topRatedList.length,
      itemBuilder: (context, index) => HomeItem(
        icon: FlowerModel.topRatedList[index].image,
        title: FlowerModel.topRatedList[index].title,
        price: FlowerModel.topRatedList[index].price,
        onPressed: () {
          
          cubit.cartList(
            FlowerModel.topRatedList,
            index,
          );
        },
      ),
    );
  }
}
