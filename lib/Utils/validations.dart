class Validations {
  static bool emailValidator(String email){
    bool emailValid=RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
    return emailValid;
  }
}