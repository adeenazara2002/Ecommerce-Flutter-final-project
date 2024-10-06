import 'package:ecommerce_flutter_project/Screens/signup/signup_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/carrot.png"),
                Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enter your credentials to continue",
                  style: TextStyle(color: Colors.grey),
                ),
                TextField(
                  controller: viewModel.usernameController,
                  decoration: InputDecoration(labelText: 'Username'),
                ),
                TextField(
                  controller: viewModel.emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: viewModel.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                DropdownButtonFormField<String>(
                  value: viewModel.selectedRole,
                  hint: Text("Signup as admin or user"),
                  onChanged: (value) {
                    viewModel.setSelectedRole(value!);
                  },
                  items: viewModel.roles.map((role) {
                    return DropdownMenuItem(
                      value: role,
                      child: Text(role),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 202, 68, 1),
                  ),
                  onPressed: () => viewModel.signUp(context),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Text("Already have an account"),
                    Text(
                      "Sign in",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
