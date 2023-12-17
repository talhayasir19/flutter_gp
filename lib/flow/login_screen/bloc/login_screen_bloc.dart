import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc() : super(LoginScreenCheckedState()) {
    on<CheckBoxEvent>((event, emit) {
      if (event.isSelected) {
        emit(LoginScreenCheckedState());
      } else {
        emit(LoginScreenUnCheckedState());
      }
    });
  }
}
