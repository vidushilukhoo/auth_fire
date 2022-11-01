import 'package:auth_firebase/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//create user obj based on firebase

// User _userFromFirebaseUser(FirebaseUser user) {
//   return user != null ? User(uid: user.uid) : null;
// }

// Stream<User> get user {
//   return _auth.onAuthStateChanged
//       //.map((FirebaseUser user) => _userFromFirebaseUser(user));
//       .map(_userFromFirebaseUser);
// }

//  -----'----//// sign in with email & password ///// -----'----//
Future Login() async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Center(child: CircularProgressIndicator()),
  );

  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  } on FirebaseAuthException catch (e) {
    print(e);
  }
  navigatorKey.currentState!.popUntil((route) => route, isFirst);
}

  // Future loginInWithEmailAndPassword(String email, String password) async {
  //   try {
  //     AuthResult result = await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     FirebaseUser user = result.user;
  //     return _userFromFirebaseUser(user);
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

  // -----'-----///// Register with email & password ///// -----'----//
//   Future registerWithEmailAndPassword(String email, String password) async {
//     try {
//       // UserCredential result = await _auth.createUserWithEmailAndPassword(
//       AuthResult result = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       // ignore: deprecated_member_use
//       FirebaseUser user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch (error) {
//       print(error.toString());
//       return null;
//     }
//   }

//   // sign out
//   Future signOut() async {
//     try {
//       return await _auth.signOut();
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }
