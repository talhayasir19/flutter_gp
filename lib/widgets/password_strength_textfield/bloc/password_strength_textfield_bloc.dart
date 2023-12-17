import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'password_strength_textfield_event.dart';
part 'password_strength_textfield_state.dart';

class PasswordStrengthTextfieldBloc extends Bloc<PasswordStrengthTextfieldEvent,
    PasswordStrengthTextfieldState> {
  PasswordStrengthTextfieldBloc()
      : super(PasswordStrengthTextfieldInitialState(strength: 0)) {
    on<PasswordVisibilityEvent>((event, emit) async {
      int strength = await calculateStrength(event.textEditingController.text);
      if (state is PasswordHideState) {
        emit(PasswordShowState(strength: strength));
      } else {
        emit(PasswordHideState(strength: strength));
      }
    });
    on<PasswordAdjustStrengthEvent>((event, emit) async {
      int strength = await calculateStrength(event.value ?? '');

      emit(PasswordAdjustStrengthState(strength: strength));
    });
    on<PasswordStrengthClearEvent>((event, emit) {
      emit(PasswordStrengthTextfieldInitialState(strength: 0));
    });
  }
}

Future<int> calculateStrength(String text) async {
  RegExp specialCharRegex = RegExp(r'^(?=.*?[!@#$%^&*()]).{8,}$');
  RegExp numbersRegex = RegExp(r'^(?=.*?[0-9]).{8,}$');
  RegExp upperCaseRegex = RegExp(r'^(?=.*?[A-Z]).{8,}$');
  int strength = 0;
  if (text.length >= 5) {
    strength++;
  }
  if (text.contains(specialCharRegex)) {
    strength++;
  }
  if (text.contains(numbersRegex)) {
    strength++;
  }
  if (text.contains(upperCaseRegex)) {
    strength++;
  }

  return strength;
}
