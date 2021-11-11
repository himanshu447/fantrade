abstract class Failure {}

class Error extends Failure {
  final String errorMessage;

  Error({required this.errorMessage});
}
