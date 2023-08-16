import 'package:flower_shop/screens/home_screen/view/widgets/cat_itam.dart';
import 'package:flutter/material.dart';

import '../../controller/cubit.dart';
import '../../repository/home_repositry.dart';

class FlowerTypeWidget extends StatelessWidget {
  const FlowerTypeWidget({
    super.key,
    required this.cubit,
  });

  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 93,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: catItem.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                cubit.catIndex = index;
                cubit.changecurrentbool(true);
              },
              child: CatItem(
                icon: '${catItem[index]['icon']}',
                title: '${catItem[index]['title']}',
                index: catItem[index]['index'],
                cubit: cubit,
              ),
            ),
          ),
        ));
  }
}
