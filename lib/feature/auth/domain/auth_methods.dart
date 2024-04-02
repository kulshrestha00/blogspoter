// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';

class Firebase_Auth_Functions {
  Firebase_Auth_Functions();

  Future<void> signUpWithEmailPassword() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "poketmar@365.com", password: "marlopoket_");
  }

  Future<void> signInWithEmailPass() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "poketmar@365.com", password: "marlopoket_");
    print("logged In");
  }
}
