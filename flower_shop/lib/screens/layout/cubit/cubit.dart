import 'package:flower_shop/screens/favorite_screen/view/screens/favorite_screen.dart';
import 'package:flower_shop/screens/layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/components.dart';
import '../../home_screen/view/screens/home_screen.dart';
import '../../my_cart/view/screens/my_cart_screen.dart';
import '../../profile_screen/view/screens/profile_screen.dart';
import '../../track_screen/view/screens/track_screen.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(StorieInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  List<Widget> screen = [
    const HomeScreen(),
    const FavoriteScreen(),
    const MyCartScreen(),
    const TrackScreen(),
    const ProfileScreen(),
  ];



  int catIndex = 0;
  void changecurrentIndex(int index) {
    currentIndex = index;
    emit(StorieChangeState());
  }

  bool isCat = false;
  void changecurrentbool(bool isCat2) {
    isCat = isCat2;
    emit(StorieChangeBoolState());
  }
}
