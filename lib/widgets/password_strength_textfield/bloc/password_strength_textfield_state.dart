part of 'password_strength_textfield_bloc.dart';

@immutable
sealed class PasswordStrengthTextfieldState {
  int strength;
  PasswordStrengthTextfieldState({required this.strength});
}

final class PasswordStrengthTextfieldInitialState
    extends PasswordStrengthTextfieldState {
  PasswordStrengthTextfieldInitialState({required super.strength});
}

final class PasswordShowState extends PasswordStrengthTextfieldState {
  PasswordShowState({required super.strength});
}

final class PasswordHideState extends PasswordStrengthTextfieldState {
  PasswordHideState({required super.strength});
}

final class PasswordAdjustStrengthState extends PasswordStrengthTextfieldState {
  PasswordAdjustStrengthState({required super.strength});
}
