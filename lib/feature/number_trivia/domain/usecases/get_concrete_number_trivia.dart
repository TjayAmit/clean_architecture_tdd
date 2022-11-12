import 'package:clean_architecture/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

class GetConcreteNumberTrivia {
  const GetConcreteNumberTrivia(this.repository);

  final NumberTriviaRepository? repository;

  Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
    return await repository!.getConcreteNumberTrivia(number);
  }
}
