import 'package:flower_shop/screens/my_cart/controller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../resources/components.dart';

class MyCartCubit extends Cubit<MyCartState> {
  MyCartCubit() : super(MyCartInitialState());

  

  static MyCartCubit get(context) => BlocProvider.of(context);

  int count = 0;
  changeCountPlus(int index) {
    cartsList[index].count = cartsList[index].count + 1;

    addItemTotal();
    emit(MyCartchangeCountPlusState());
  }

  changeCountMin(int index) {
    cartsList[index].count = cartsList[index].count - 1;
    addItemTotal();
    emit(MyCartchangeCountMinState());
  }

  String? selCard;
  changeCard(String? val) {
    selCard = val;
    emit(MyCartchangeCardState());
  }

  int countItem = 0;
  int itemTotal = 0;
  int total = 0;

  addTotal() {
    total = 0;
    total = (total + itemTotal) + 5;
    emit(MyCartTotalState());
  }

  addItemTotal() {
    itemTotal = 0;
    for (var element in cartsList) {
      itemTotal = itemTotal + (element.price * element.count);
    }
    addTotal();
    emit(MyCartItemTotalState());
  }

  addCountItem() {
    countItem = 0;
    for (var element in cartsList) {
      countItem = countItem + element.count;
    }
    print(countItem);
    emit(MyCartCountItemState());
  }

  void cartList(int index) {
    cartsList.remove(cartsList[index]);
    addItemTotal();
    emit(MyCartListState());
  }
}
