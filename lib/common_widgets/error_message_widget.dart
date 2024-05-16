import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget(this.errorMessage, {super.key});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      errorMessage,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.red),
    );
  }
}
