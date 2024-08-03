import 'pattern.dart';

class Validators {
  static bool isValidEmail(String email) {
    return RegexPattern.emailRegExp.hasMatch(email);
  }

  static bool isValidPhone(String phone) {
    return RegexPattern.phoneRegExp.hasMatch(phone);
  }

  static String? validatePassword(String password) {
    if (password.length < 8) return 'Password has a least 8 characters';

    return null;
  }
}
