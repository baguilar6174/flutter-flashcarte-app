abstract class Failure {
  const Failure([List properties = const <dynamic>[]]);
}

class ServerFailure extends Failure {
  final String? message;

  const ServerFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is ServerFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class NoDataFailure extends Failure {
  final String? message;

  const NoDataFailure([this.message]);

  @override
  bool operator ==(Object other) =>
      other is NoDataFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class CacheFailure extends Failure {
  @override
  bool operator ==(Object other) => other is CacheFailure;

  @override
  int get hashCode => 0;
}

class ValidationFailure extends Failure {
  final String? message;

  const ValidationFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is ValidationFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class DatabaseFailure extends Failure {
  final String? message;

  const DatabaseFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is DatabaseFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}
