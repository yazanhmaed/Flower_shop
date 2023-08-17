import 'package:flutter/material.dart';

import '../../controller/cubit.dart';
import '../../models/flower_model.dart';
import 'home_item.dart';

class NearToYouWidget extends StatelessWidget {
  const NearToYouWidget({
    super.key,
    required this.cubit,
  });
  final HomeCubit cubit;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: FlowerModel.nearToYou.length,
      itemBuilder: (context, index) => HomeItem(
        icon: FlowerModel.nearToYou[index].image,
        title: FlowerModel.nearToYou[index].title,
        price: FlowerModel.nearToYou[index].price,
        onPressed: () {
          cubit.cartList(
            FlowerModel.nearToYou,
            index,
          );
        },
      ),
    );
  }
}
