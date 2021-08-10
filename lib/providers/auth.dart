import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Auth with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;

  Future<void> signInAnonymously() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      getUser(userId: userCredential.user!.uid);
    } catch (e) {
      print('Failed to sign in Anonymously');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<User?> getUser({required String userId}) async {
    print('The user that is canvassing is $userId');
  }
}
