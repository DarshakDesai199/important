import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn googleSignIn = GoogleSignIn();

String? name;
String? email;
String? imageUrl;

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken);

  UserCredential authResult =
      await FirebaseAuth.instance.signInWithCredential(credential);
  User? user = authResult.user;

  name = user!.displayName;
  email = user.email;
  imageUrl = user.photoURL;

  final User? currentUser = FirebaseAuth.instance.currentUser;
  assert(user.uid == currentUser!.uid);

  print('signInWithGoogle succeeded: $user');
  return '$user';
}

Future<void> signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Signed Out");
}
