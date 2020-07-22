import 'package:google_sign_in/google_sign_in.dart';
import 'package:slidy_aula/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository implements IAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Future getEmailLogin() {
    throw UnimplementedError();
  }

  @override
  Future<FirebaseUser> getGoogleLogin() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);
    return user;
  }

  @override
  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  @override
  Future getLogout()  {
    return _auth.signOut();
  }

}