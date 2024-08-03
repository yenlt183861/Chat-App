enum VerificationMethod { email, phone }

extension VerificationMethodEx on VerificationMethod {
  String get name {
    switch (this) {
      case VerificationMethod.email:
        return 'email';
      case VerificationMethod.phone:
        return 'phone number';
    }
  }
}
