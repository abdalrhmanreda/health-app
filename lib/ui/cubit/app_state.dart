part of 'app_cubit.dart';

@immutable
abstract class AppStates {}

class AppInitial extends AppStates {}

class ChangeNavBarState extends AppStates {}

class LoadingState extends AppStates {}

class FailureState extends AppStates {
  final String error;

  FailureState({required this.error});
}

class GetHomeProductsSuccessState extends AppStates {}

class GetHProductDetailsSuccessState extends AppStates {}
