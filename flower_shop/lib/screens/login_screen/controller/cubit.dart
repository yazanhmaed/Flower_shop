
import 'package:flower_shop/screens/login_screen/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  String? userid;
  
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  int positive = 0;
  void changecurrentSwitch({required int posit}) {
    positive = posit;
    emit(ChangeSuccessState());
  }
 bool obscureText = true;
  void changeobscureText() {
    obscureText = !obscureText;
    emit(ChangeobscureTextSuccessState());
  }
  
}
