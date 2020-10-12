import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:notes_firebase_ddd/domain/auth/user.dart' as auth_model;
import 'package:notes_firebase_ddd/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  auth_model.User toDomain() {
    return auth_model.User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
