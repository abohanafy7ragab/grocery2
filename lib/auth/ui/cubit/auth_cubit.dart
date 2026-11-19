import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocery/auth/data/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  register({required String email, required String password}) async {
    emit(RegisterLaoding());
    try {
      final response = await AuthRepo.register(
        email: email,
        password: password,
      );
      if (response is UserCredential) {
        emit(RegisterSuccess());
      } else {
        emit(RegisterError());
      }
    } catch (e) {
      emit(RegisterError());
    }
  }
}
