import 'package:flower_shop/screens/home_screen/controller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/components.dart';
import '../models/flower_model.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int catIndex = -1;

  bool isCat = false;
  void changecurrentbool(bool isCat2) {
    isCat = isCat2;
    emit(HomeChangeBoolState());
  }

  double slider = 50;
  void changeSlider(double sli) {
    slider = sli;
    emit(HomeChangeSliderState());
  }
  int imageSlider = 0;
  void changeimageSlider(int sli) {
    imageSlider = sli;
    emit(HomeChangeimageSliderState());
  }

  double rangStart = 800;
  double rangEnd = 1500;
  void changeRangeStr(double str, double end) {
    rangStart = str;
    rangEnd = end;
    emit(HomeChangeRangeState());
  }

  void faver(List<FlowerModel> list, int i) {
    if (fav.contains(list[i])) {
      list[i].isFavorated = false;
      fav.remove(list[i]);
    } else {
      list[i].isFavorated = true;
      fav.add(list[i]);
    }
    print(fav);
    emit(HomeFavState());
  }

  void cartList(List<FlowerModel> list, int index) {
 
    var b = cartsList.any((element) => element.title == list[index].title);
    var b2 = cartsList.any((element) => element.plantId == list[index].plantId);
    // print(b);

    if (b & b2) {
      for (var element in cartsList) {
        if (element.title == list[index].title &&
            element.plantId == list[index].plantId) {
          element.count = element.count + 1;
        }
      }
    } else {
      cartsList.add(list[index]);
    }
    emit(HomeCartState());
  }

  void changecurrentIndex(int index) {
    currentIndex = index;
    emit(HomeChangeState());
  }
}
