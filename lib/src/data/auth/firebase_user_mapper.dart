import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kenya_it_hardware/src/data/auth/user_model.dart';

@lazySingleton
class FirebaseUserMapper {
  UserModel toDomain(User user) {
    return user == null
        ? null
        : UserModel(
            id: '',
            name: user.displayName ?? '',
            email: user.email ?? '',
            uid: user.uid ?? '',
            picture: user.photoURL ?? '',
          );
  }
}
