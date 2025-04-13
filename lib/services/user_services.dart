import 'package:firebase_auth/firebase_auth.dart';

class ResponseUserService {
  final bool isSuccess;
  final String message;

  ResponseUserService({required this.isSuccess, required this.message});
}

class UserServices {
  Future<ResponseUserService> register(
      String name, String age, String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await userCredential.user?.updateDisplayName(name);
      return ResponseUserService(isSuccess: true, message: 'Berhasil daftar!');
    } catch (e) {
      if (e is FirebaseAuthException) {
        return ResponseUserService(isSuccess: false, message: e.message!);
      }
      return ResponseUserService(isSuccess: false, message: 'Gagal mendaftar!');
    }
  }

  Future<ResponseUserService> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return ResponseUserService(isSuccess: true, message: 'Berhasil login!');
    } catch (e) {
      if (e is FirebaseAuthException) {
        return ResponseUserService(isSuccess: false, message: e.message!);
      }
      return ResponseUserService(isSuccess: false, message: 'Gagal mendaftar!');
    }
  }

  Future<ResponseUserService> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return ResponseUserService(isSuccess: true, message: 'Berhasil logout!');
    } catch (e) {
      if (e is FirebaseAuthException) {
        return ResponseUserService(isSuccess: false, message: e.message!);
      }
      return ResponseUserService(isSuccess: false, message: 'Gagal logout!');
    }
  }
}
