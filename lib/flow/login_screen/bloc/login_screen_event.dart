part of 'login_screen_bloc.dart';

@immutable
sealed class LoginScreenEvent {}

class CheckBoxEvent extends LoginScreenEvent {
  bool isSelected;
  CheckBoxEvent(this.isSelected);
}
