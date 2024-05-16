import 'dart:async';

import 'package:lorcana_collection/core/data/remote/app_services.dart';
import 'package:lorcana_collection/core/data/remote/realm_services.dart';
import 'package:lorcana_collection/util/colored_debug_printer.dart';
import 'package:realm/realm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  AuthRepository(this.ref);
  final AuthRepositoryRef ref;

  User? get currentUser => ref.read(appServicesProvider).app.currentUser;
  Stream<User?> authStateChanges() => ref.read(appServicesProvider).authStateChanges();
  bool get isAuthenticated => currentUser != null;
  bool get completeSync =>
      ref.read(realmServicesProvider) != null &&
      ref.read(realmServicesProvider)!.realm.subscriptions.state == SubscriptionSetState.complete;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    Print.green('DLOG', 'signInWithEmailAndPassword');
    final appServices = ref.read(appServicesProvider);
    Print.green('DLOG', 'logInUserEmailPassword');
    await appServices.logInUserEmailPassword(email, password);
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    final appServices = ref.read(appServicesProvider);
    await appServices.registerUserEmailPassword(email, password);

    await signInWithEmailAndPassword(email, password);
  }

  Future<void> logOut() async {
    await ref.read(appServicesProvider).logOut();
  }
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  Print.green('DLOG', 'init');
  return AuthRepository(ref);
}
