
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String? message;
  const Failure({this.message});
}

class ServerFailure extends Failure{
  final String? errorMessage;
  const ServerFailure({this.errorMessage}) : super(message: errorMessage);
  
  @override
  List<Object?> get props => [errorMessage];

 
}

class CacheFailure extends Failure{
  final String? errorMessage;
  const CacheFailure({this.errorMessage}) : super(message: errorMessage);
  
  @override
  List<Object?> get props => [errorMessage];
  
}