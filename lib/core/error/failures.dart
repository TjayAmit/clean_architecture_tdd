import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([this.properties = const <dynamic>[]]);

  final List properties;

  /// As latest version of [Equatable] this is how to implement super()
  @override
  List<Object> get props => [properties];
}
