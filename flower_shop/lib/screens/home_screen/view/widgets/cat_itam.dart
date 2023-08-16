import 'package:flower_shop/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../../controller/cubit.dart';

class CatItem extends StatelessWidget {
  const CatItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.index,
    required this.cubit,
  }) : super(key: key);
  final String icon;
  final String title;
  final int index;
  final HomeCubit cubit;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == cubit.catIndex
                ? ColorManager.primary
                : ColorManager.lightGrey,
          ),
          child: ImageIcon(
            AssetImage(icon),
            size: 45,
            color:
                index == cubit.catIndex ? Colors.white : ColorManager.primary,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
