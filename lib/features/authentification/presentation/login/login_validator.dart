import 'package:lorcana_collection/features/authentification/presentation/login/login_form_type.dart';
import 'package:lorcana_collection/features/authentification/presentation/login/strings_validator.dart';
import 'package:lorcana_collection/l10n/string_hardcoded.dart';

/// Mixin class to be used for client-side email & password validation
mixin EmailAndPasswordValidators {
  final StringValidator emailSubmitValidator = EmailSubmitRegexValidator();
  final StringValidator passwordRegisterSubmitValidator = MinLengthStringValidator(8);
  final StringValidator passwordSignInSubmitValidator = NonEmptyStringValidator();

  bool canSubmitEmail(String email) {
    return emailSubmitValidator.isValid(email);
  }

  bool canSubmitPassword(
    String password,
    LoginFormType formType,
  ) {
    if (formType == LoginFormType.register) {
      return passwordRegisterSubmitValidator.isValid(password);
    }
    return passwordSignInSubmitValidator.isValid(password);
  }

  String? emailErrorText(String email) {
    final showErrorText = !canSubmitEmail(email);
    final errorText = email.isEmpty ? "Email can't be empty".hardcoded : 'Invalid email'.hardcoded;
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(
    String password,
    LoginFormType formType,
  ) {
    final showErrorText = !canSubmitPassword(password, formType);
    final errorText = password.isEmpty ? "Password can't be empty".hardcoded : 'Password is too short'.hardcoded;
    return showErrorText ? errorText : null;
  }
}
