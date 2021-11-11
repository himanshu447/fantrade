
extension E on String {
  String lastChars(int n) => substring(length - n);
}

extension StringCasingExtension on String {
  String toCapitalized() => isNotEmpty ?'${this[0].toUpperCase()}${substring(1)}':'';
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}