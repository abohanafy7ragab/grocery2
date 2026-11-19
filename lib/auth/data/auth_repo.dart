import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
 static final FirebaseAuth _auth = FirebaseAuth.instance;
 static Future register({required String email, required String password}) async {
    try {
      final response = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return response;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

 static Future login({required String email, required String password})async{
    try {
      final response = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return response;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
