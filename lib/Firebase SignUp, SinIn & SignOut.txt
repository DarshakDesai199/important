import 'package:firebase_new/FireBaseService/constant.dart';

class FireBaseAuth {
  static Future<bool> signUp({String? email, String? password}) async {
    await lFirebaseAuth
        .createUserWithEmailAndPassword(email: email!, password: password!)
        .catchError((e) {
      print("ERROR == >$e");
    });
    return true;
  }

  static Future<bool> logIn({String? email, String? password}) async {
    await lFirebaseAuth
        .signInWithEmailAndPassword(email: email!, password: password!)
        .catchError((e) {
      print("ERROR == >$e");
    });
    return true;
  }

  static getUserInfo() {
    print("UID == >${lFirebaseAuth.currentUser!.uid}");
    print("EMAIL == >${lFirebaseAuth.currentUser!.email}");
  }

  static Future logOut() async {
    lFirebaseAuth.signOut();
  }
}
