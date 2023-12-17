part of 'password_strength_textfield_bloc.dart';

@immutable
sealed class PasswordStrengthTextfieldEvent {}

class PasswordVisibilityEvent extends PasswordStrengthTextfieldEvent {
  TextEditingController textEditingController;
  PasswordVisibilityEvent(this.textEditingController);
}

class PasswordAdjustStrengthEvent extends PasswordStrengthTextfieldEvent {
  String? value;
  PasswordAdjustStrengthEvent(this.value);
}

class PasswordStrengthClearEvent extends PasswordStrengthTextfieldEvent {
  PasswordStrengthClearEvent();
}
