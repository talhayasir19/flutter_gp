part of 'login_screen_bloc.dart';

@immutable
sealed class LoginScreenState {}

final class LoginScreenInitialState extends LoginScreenState {}

final class LoginScreenCheckedState extends LoginScreenState {}

final class LoginScreenUnCheckedState extends LoginScreenState {}
