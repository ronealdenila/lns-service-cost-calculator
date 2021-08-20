import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Auth with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  bool _isBusy = false;

  bool get isBusy {
    return _isBusy;
  }

  Future<void> signInAnonymously() async {
    _isBusy = true;
    try {
      print('setting isBusy to: $_isBusy');
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      getUser(userId: userCredential.user!.uid);

      _isBusy = false;
      print('setting isBusy to: $_isBusy');
    } catch (e) {
      print('Failed to sign in Anonymously');
    }
    notifyListeners();
  }

  Future<void> signOut() async {
    await _auth.signOut();
    print('Account Signed out');
    notifyListeners();
  }

  Future<User?> getUser({required String userId}) async {
    print('The user that is canvassing is $userId');
  }
}
