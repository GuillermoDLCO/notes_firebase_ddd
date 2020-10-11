import 'package:dartz/dartz.dart';
import 'package:notes_firebase_ddd/domain/core/failures.dart';
import 'package:notes_firebase_ddd/domain/core/value_objects.dart';
import 'package:notes_firebase_ddd/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  // Remove for abstract class

  // @override
  // String toString() => 'EmailAddress(value: $value)';

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is EmailAddress && o.value == value;
  // }

  // @override
  // int get hashCode => value.hashCode;
}

// abstract class Failure {}

// class InvalidEmailException implements Failure {
//   final String failedValue;

//   const InvalidEmailException({@required this.failedValue});
// }

// class InvalidPasswordException implements Failure {
//   final String failedValue;

//   const InvalidPasswordException({@required this.failedValue});
// }

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
