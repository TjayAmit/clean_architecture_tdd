import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import "package:meta/meta.dart";

class NumberTrivia extends Equatable {
  const NumberTrivia({@required this.text, @required this.number});

  final String? text;
  final int? number;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NumberTrivia &&
          runtimeType == other.runtimeType &&
          text.hashCode == other.hashCode &&
          number.hashCode == other.hashCode;

  /// As latest version of [Equatable] this is how to implement super()
  @override
  List<Object> get props => [text!, number!];

  factory NumberTrivia.fromJson(Map<String, dynamic> json) {
    return NumberTrivia(text: json['text'], number: json['number']);
  }

  @override
  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}
