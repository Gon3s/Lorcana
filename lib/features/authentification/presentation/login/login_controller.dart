import 'dart:async';

import 'package:lorcana_collection/features/authentification/data/auth_repository.dart';
import 'package:lorcana_collection/features/authentification/presentation/login/login_form_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() async {
    // nothing to do
  }

  Future<bool> submit({
    required String email,
    required String password,
    required LoginFormType formType,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _authenticate(email, password, formType));
    return state.hasError == false;
  }

  Future<void> _authenticate(
    String email,
    String password,
    LoginFormType formType,
  ) {
    final authRepository = ref.read(authRepositoryProvider);
    switch (formType) {
      case LoginFormType.signIn:
        return authRepository.signInWithEmailAndPassword(email, password);
      case LoginFormType.register:
        return authRepository.createUserWithEmailAndPassword(email, password);
    }
  }
}
