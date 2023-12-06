import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:healthy_app/generated/assets.dart';
import 'package:healthy_app/ui/features/home/models/product_model.dart';
import 'package:healthy_app/ui/features/profile/profile_screen.dart';

import '../../generated/l10n.dart';
import '../features/cart/screens/cart_screen.dart';
import '../features/favourite/screens/favourite_screen.dart';
import '../features/home/screens/home_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(IconlyBroken.home), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.heart), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.buy), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.profile), label: ''),
  ];
  List<Widget> screens = const [
    HomeScreen(),
    FavouriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  List<String> titles(context) => [
        S.of(context).Category,
        S.of(context).Favourite,
        S.of(context).Cart,
        S.of(context).Profile
      ];
  int currentIndex = 0;
  void changeNavBar(int index) {
    currentIndex = index;
    emit(ChangeNavBarState());
  }

  List<ProductModel> foodWithAddedSugar = [];
  List adds = [];
  void getAllCategory() {
    emit(LoadingState());
    rootBundle.loadString(Assets.dataCategory).then((value) {
      var data = jsonDecode(value);
      data['طعام مضاف اليه سكر'].forEach((element) {
        foodWithAddedSugar.add(ProductModel.fromJson(element));
      });
      data['اضافات'].forEach((element) {
        adds.add(ProductModel.fromJson(element));
      });
      emit(GetHomeProductsSuccessState());
    }).catchError((error) {
      emit(FailureState(error: error.toString()));
    });
  }
}
