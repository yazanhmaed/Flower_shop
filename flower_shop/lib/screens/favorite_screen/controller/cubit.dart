import 'package:flower_shop/screens/favorite_screen/controller/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/components.dart';
import '../../home_screen/models/flower_model.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavInitialState());

  static FavoriteCubit get(context) => BlocProvider.of(context);

  void favList(int index) {
    if (fav[index].title == 'Pot') {
      for (var element in FlowerModel.potList) {
        if (element.plantId == fav[index].plantId) {
          element.isFavorated = false;
        }
      }
    } else if (fav[index].title == 'Rose') {
      for (var element in FlowerModel.roseList) {
        if (element.plantId == fav[index].plantId) {
          element.isFavorated = false;
        }
      }
    } else if (fav[index].title == 'Lilies') {
      for (var element in FlowerModel.liliesList) {
        if (element.plantId == fav[index].plantId) {
          element.isFavorated = false;
        }
      }
    } else if (fav[index].title == 'Chrysanthemum') {
      for (var element in FlowerModel.chryList) {
        if (element.plantId == fav[index].plantId) {
          element.isFavorated = false;
        }
      }
    }

    fav.remove(fav[index]);
    emit(FavListState());
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

    emit(FavCartState());
  }
}
