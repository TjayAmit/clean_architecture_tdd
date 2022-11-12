import 'package:clean_architecture/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture/feature/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
// import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia? usercase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usercase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumber = 1;
  const tNUmberTrivia = NumberTrivia(number: 1, text: "test");

  test('should get trivia for the number of repository', () async {
    // arrange
    when(() => mockNumberTriviaRepository?.getConcreteNumberTrivia(1))
        .thenAnswer((realInvocation) async => const Right(tNUmberTrivia));
    // act
    final result = await usercase?.execute(number: tNumber);
    // assert
    expect(result, const Right(tNUmberTrivia));
    verify(() => mockNumberTriviaRepository!.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
