import 'package:stacked/stacked.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginViewModel extends BaseViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String selectedRole = 'User'; // Default role

  // Function to set selected role
  void setSelectedRole(String role) {
    selectedRole = role;
    notifyListeners();
  }

  Future<void> login(String email, String password, String role) async {
    setBusy(true);
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // Navigate to the home screen for users or admin dashboard based on role
      if (role == 'Admin') {
        // Navigate to Admin Dashboard
      } else {
        // Navigate to User Home Screen
      }
    } catch (e) {
      // Handle login errors here
      print(e);
    } finally {
      setBusy(false);
    }
  }
}
