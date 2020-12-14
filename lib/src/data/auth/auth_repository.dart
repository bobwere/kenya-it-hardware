import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kenya_it_hardware/common/constants/strings.dart';
import 'package:kenya_it_hardware/common/failures/auth_failure.dart';
import 'package:kenya_it_hardware/src/data/auth/firebase_user_mapper.dart';
import 'package:kenya_it_hardware/src/data/auth/user_model.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, UserModel>> registerWithUsernameAndPassword(
      {@required String username,
      @required String password,
      @required String photoUrl,
      @required String email});
  Option<UserModel> getSignedInUser();
  Future<Either<AuthFailure, UserModel>> signInWithEmailAndPassword({
    @required String username,
    @required String password,
  });
  Future<Either<AuthFailure, UserModel>> signInWithGoogle();
  Future<void> signOut();
}

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final SharedPreferences _pref;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn,
      this._firebaseUserMapper, this._firestore, this._pref);

  @override
  Option<UserModel> getSignedInUser() {
    User fUser = _firebaseAuth.currentUser;

    return optionOf(_firebaseUserMapper.toDomain(fUser));
  }

  @override
  Future<Either<AuthFailure, UserModel>> registerWithUsernameAndPassword(
      {String username, String email, String password, String photoUrl}) async {
    try {
      final UserCredential fUser = await _firebaseAuth
          .createUserWithEmailAndPassword(email: username, password: password);

      UserModel user = _firebaseUserMapper.toDomain(fUser.user);

      if (fUser.additionalUserInfo.isNewUser) {
        final userCollection = _firestore.collection('users');

        await userCollection.doc(user.id).set(user.toJson());
      }

      await Future.wait([
        _pref.setString(USER_ID, user.id),
        _pref.setString(USER_NAME, user.name),
        _pref.setString(USER_EMAIL, user.email),
        _pref.setString(USER_PHOTO_URL, user.picture),
      ]);

      return right(user);
    } on SocketException catch (e) {
      return left(AuthFailure.noInternet());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> signInWithEmailAndPassword(
      {String username, String password}) async {
    try {
      final UserCredential fUser = await _firebaseAuth
          .signInWithEmailAndPassword(email: username, password: password);

      UserModel user = _firebaseUserMapper.toDomain(fUser.user);

      final userCollection = _firestore.collection('users');

      final docSnapshot = await userCollection.doc(fUser.user.uid).get();

      UserModel userFromFirebase = UserModel.fromJson(docSnapshot.data());

      await Future.wait([
        _pref.setString(USER_ID, userFromFirebase.id),
        _pref.setString(USER_NAME, userFromFirebase.name),
        _pref.setString(USER_EMAIL, userFromFirebase.email),
        _pref.setString(USER_PHOTO_URL, userFromFirebase.picture),
      ]);

      return right(user);
    } on SocketException catch (e) {
      return left(AuthFailure.noInternet());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    } on FirebaseAuthException catch (e) {
      if (e.code == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      UserCredential fUser =
          await _firebaseAuth.signInWithCredential(authCredential);
      UserModel user = _firebaseUserMapper.toDomain(fUser.user);

      if (fUser.additionalUserInfo.isNewUser) {
        final userCollection = _firestore.collection('users');

        await userCollection.doc(fUser.user.uid).set(user.toJson());
      }

      await Future.wait([
        _pref.setString(USER_ID, user.id),
        _pref.setString(USER_NAME, user.name),
        _pref.setString(USER_EMAIL, user.email),
        _pref.setString(USER_PHOTO_URL, user.picture),
      ]);

      return right(user);
    } on SocketException catch (e) {
      return left(AuthFailure.noInternet());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
    await _pref.remove(USER_ID);
    await _pref.remove(USER_NAME);
    await _pref.remove(USER_EMAIL);
    await _pref.remove(USER_PHOTO_URL);

    return null;
  }
}
