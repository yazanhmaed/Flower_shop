import 'package:flower_shop/resources/components.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/widgets/input_text.dart';
import '../screens/filter_screen.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Row(
        children: [
          Expanded(
            child: InputText(
              type: TextInputType.name,
              hintText: '',
              validator: 'Enter your search',
              icon: Icons.search,
              controller: searchController,
              labelText: 'Search',
            ),
          ),
          Container(
            width: 61,
            height: 56,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorManager.lightGrey),
            child: IconButton(
                onPressed: () => navigateTo(context, const FilterScreen()),
                icon: ImageIcon(
                  const AssetImage('assets/images/setting.png'),
                  size: 27,
                  color: ColorManager.primary,
                )),
          )
        ],
      ),
    );
  }
}
