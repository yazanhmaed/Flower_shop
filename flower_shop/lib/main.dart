import 'package:flower_shop/resources/bloc.dart';
import 'package:flower_shop/resources/components.dart';
import 'package:flower_shop/resources/network/local/cache_helper.dart';
import 'package:flower_shop/resources/theme_manager.dart';
import 'package:flower_shop/screens/home_screen/controller/cubit.dart';
import 'package:flower_shop/screens/layout/cubit/cubit.dart';
import 'package:flower_shop/screens/layout/home_layout.dart';
import 'package:flower_shop/screens/login_screen/controller/cubit.dart';
import 'package:flower_shop/screens/login_screen/view/screens/login_screen.dart';
import 'package:flower_shop/screens/my_cart/controller/cubit.dart';
import 'package:flower_shop/screens/on_boarding/view/screens/on_boarding_screen.dart';
import 'package:flower_shop/screens/splash_screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  bool? onBording = CacheHelper.getData(key: 'onBoarding');
  Widget widget;
  if (onBording != null) {
    // ignore: unrelated_type_equality_checks
    if (token != null) {
      widget = const HomeLayoutScreen();
    } else {
      widget = const LoginScreen();
    }
  } else {
    widget = const OnBoardingScreen();
  }
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.startWidget});
  final Widget startWidget;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => LayoutCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => MyCartCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flower Shop',
        theme: getApplicationTheme(),
      
        home: 
        SplashScreens(
          startWidget: startWidget,
        ),
      ),
    );
  }
}
