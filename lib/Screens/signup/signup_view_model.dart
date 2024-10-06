import 'package:ecommerce_flutter_project/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final NavigationService _navigationService = NavigationService();

  String? selectedRole;
  List<String> roles = ['Admin', 'User'];

  // Text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  void setSelectedRole(String role) {
    selectedRole = role;
    notifyListeners();
  }

  Future<void> signUp(BuildContext context) async {
    if (selectedRole == null) {
      // Show error if role is not selected
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select a role')),
      );
      return;
    }

    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Navigate to the correct screen based on the selected role
      // if (selectedRole == 'Admin') {
      //   _navigationService.navigateTo(Routes.adminDashboardView); // Adjust the route as needed
      // } else {
      //   _navigationService.navigateTo(Routes.homeView); // Adjust the route as needed
      // }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.message}')),
      );
    }
  }
}
