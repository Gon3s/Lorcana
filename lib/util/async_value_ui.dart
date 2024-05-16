import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lorcana_collection/common_widgets/alert_dialogs.dart';
import 'package:lorcana_collection/l10n/string_hardcoded.dart';

extension AsyncValueUI on AsyncValue<void> {
  void showAlertDialogOnError(BuildContext context) {
    if (!isLoading && hasError) {
      showExceptionAlertDialog(
        context: context,
        title: 'Error'.hardcoded,
        exception: error,
      );
    }
  }
}
