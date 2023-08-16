import 'package:flower_shop/screens/on_boarding/controller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(BoardingInitialState());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  bool isLast = false;

  void changeBool(bool last) {
    isLast = last;
    emit(BoardingChangeBoolState());
  }
}
