abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFaliure extends Failure {
  ServerFaliure(super.message);
}
