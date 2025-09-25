// Core failure classes for error handling
abstract class Failure {}

class ServerFailure extends Failure {}

class NetworkFailure extends Failure {}

class CacheFailure extends Failure {}
