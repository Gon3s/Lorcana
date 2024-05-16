import 'package:flutter/material.dart' hide Card;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/core/data/remote/app_services.dart';
import 'package:lorcana_collection/features/cards/data/schemas/card.dart';
import 'package:lorcana_collection/util/colored_debug_printer.dart';
import 'package:realm/realm.dart';

class RealmServices with ChangeNotifier {
  RealmServices(this.app) {
    if (app.currentUser != null || currentUser != app.currentUser) {
      currentUser ??= app.currentUser;
      realm = Realm(
        Configuration.flexibleSync(
          currentUser!,
          [
            Card.schema,
            CardPrices.schema,
            CardImageUrls.schema,
            CardFavorites.schema,
          ],
        ),
      );

      Realm.logger.setLogLevel(LogLevel.debug);

      Print.green('DLOG', 'RealmServices init');
      if (realm.subscriptions.isEmpty) {
        Print.green('DLOG', 'RealmServices init updateSubscriptions');
        updateSubscriptions();
        Print.green('DLOG', 'RealmServices init updateSubscriptions done');
      }
    }
  }

  late Realm realm;
  User? currentUser;
  App app;

  Future<void> updateSubscriptions() async {
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions
        ..clear()
        ..add(realm.all<Card>())
        ..add(realm.all<CardFavorites>());
    });
    Print.green('DLOG', 'updateSubscriptions waiting for sync');
    await realm.subscriptions.waitForSynchronization();
    notifyListeners();
    Print.green('DLOG', 'updateSubscriptions waiting for sync done');
  }

  Future<void> close() async {
    if (currentUser != null) {
      await currentUser?.logOut();
      currentUser = null;
    }
    realm.close();
  }

  @override
  void dispose() {
    Print.green('DLOG', 'RealmServices dispose');
    realm.close();
    super.dispose();
  }
}

final realmServicesProvider = ChangeNotifierProvider<RealmServices?>(
  (ref) {
    final appServices = ref.watch(appServicesProvider);
    Print.green('DLOG', 'realmServicesProvider init');
    return appServices.app.currentUser != null ? RealmServices(appServices.app) : null;
  },
);
