import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/util/colored_debug_printer.dart';
import 'package:realm/realm.dart';

class AppServices with ChangeNotifier {
  AppServices()
      : app = App(
          AppConfiguration('devicesync-esxzg'),
        );
  App app;

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  final _streamController = StreamController<User?>.broadcast();

  Stream<User?> authStateChanges() => _streamController.stream;
  User? get currentUser => app.currentUser;

  Future<User> logInUserEmailPassword(String email, String password) async {
    final loggedInUser = await app.logIn(Credentials.emailPassword(email, password));
    _streamController.add(loggedInUser);
    notifyListeners();
    return loggedInUser;
  }

  Future<User> registerUserEmailPassword(String email, String password) async {
    final authProvider = EmailPasswordAuthProvider(app);
    await authProvider.registerUser(email, password);
    final loggedInUser = await app.logIn(Credentials.emailPassword(email, password));
    _streamController.add(loggedInUser);
    notifyListeners();
    return loggedInUser;
  }

  Future<void> logOut() async {
    await currentUser?.logOut();
    _streamController.add(null);
  }
}

final appServicesProvider = ChangeNotifierProvider<AppServices>((ref) {
  Print.green('DLOG', 'appServiceProvider init');
  return AppServices();
});
