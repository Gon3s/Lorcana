import 'package:lorcana_collection/l10n/string_hardcoded.dart';

/// Form type for email & password authentication
enum LoginFormType { signIn, register }

extension LoginFormTypeX on LoginFormType {
  String get passwordLabelText {
    if (this == LoginFormType.register) {
      return 'Password (8+ characters)'.hardcoded;
    } else {
      return 'Password'.hardcoded;
    }
  }

  // Getters
  String get primaryButtonText {
    if (this == LoginFormType.register) {
      return 'Create an account'.hardcoded;
    } else {
      return 'Sign in'.hardcoded;
    }
  }

  String get secondaryButtonText {
    if (this == LoginFormType.register) {
      return 'Have an account? Sign in'.hardcoded;
    } else {
      return 'Need an account? Register'.hardcoded;
    }
  }

  LoginFormType get secondaryActionFormType {
    if (this == LoginFormType.register) {
      return LoginFormType.signIn;
    } else {
      return LoginFormType.register;
    }
  }

  String get errorAlertTitle {
    if (this == LoginFormType.register) {
      return 'Registration failed'.hardcoded;
    } else {
      return 'Sign in failed'.hardcoded;
    }
  }

  String get title {
    if (this == LoginFormType.register) {
      return 'Register'.hardcoded;
    } else {
      return 'Sign in'.hardcoded;
    }
  }
}
