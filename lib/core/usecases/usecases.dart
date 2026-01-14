import 'package:clean_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Usecases<T,P>{   
  Future<Either<Failure,T >> call(P params);                  // T represent Quote (what we want to return)

}


class NoParams extends Equatable{
  @override
  List<Object?> get props => [];
}

// ToDo : in case of parameter exist
// class WithParams extends Equatable{
//   final int password;
//   final String email;

//   const WithParams({required this.password, required this.email});
//   @override
//   List<Object?> get props => [password,email];
// }