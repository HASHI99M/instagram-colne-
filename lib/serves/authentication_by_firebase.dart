import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram/serves/authentication.dart';
import '../const.dart';

class AuthenticationByFirebase extends Authentication {
  FirebaseAuth _instanceFirAuth = FirebaseAuth.instance;
  FirebaseFirestore _instanceFirStore = FirebaseFirestore.instance;

  @override
  signIn(Function workDone, Function onError,
      {String email,
      String phone,
      String username,
      String password,
      String name}) {
    _instanceFirAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then(
            (value) => _saveData(
                email: email,
                password: password,
                phone: phone,
                userID: value.user.uid,
                username: username),
            onError: onError);
  }

  _saveData(
      {String userID,
      String email,
      String username,
      String phone,
      String password}) {
    _instanceFirStore.collection(kCollectionUsers).doc(userID).set({
      'ID': userID,
      'EMAIL': email,
      'USERNAME': username,
      'PHONE': phone,
      'PASSWORD': password,
    });
  }

  @override
  signOut(Function workDone, Function onError) {
    _instanceFirAuth
        .signOut()
        .then((value) => workDone(value), onError: onError);
  }

  @override
  signUp(Function workDone, Function onError,
      {String email, String phone, String username, String password}) {
    _instanceFirAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => workDone(value), onError: onError);
  }
}
