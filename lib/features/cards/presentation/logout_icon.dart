import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/features/authentification/data/auth_repository.dart';

class LogoutIcon extends ConsumerWidget {
  const LogoutIcon({super.key});

  static const logoutKey = Key('logout-icon');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      key: logoutKey,
      icon: const Icon(Icons.logout),
      onPressed: () {
        ref.read(authRepositoryProvider).logOut();
      },
    );
  }
}
