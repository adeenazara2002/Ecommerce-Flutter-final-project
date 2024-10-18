import 'package:ecommerce_flutter_project/Screens/login/loginViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Center(
                  child: Image.asset(
                    'assets/images/carrot.png', // replace with the path to your image
                    height: 60,
                    width: 60,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Loging",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  "Enter your email and password",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 20),
                // Dropdown to select role
                DropdownButtonFormField<String>(
                  value: model.selectedRole,
                  items: [
                    DropdownMenuItem(
                      child: Text("User"),
                      value: "User",
                    ),
                    DropdownMenuItem(
                      child: Text("Admin"),
                      value: "Admin",
                    ),
                  ],
                  onChanged: (value) {
                    model.setSelectedRole(value!);
                  },
                  decoration: InputDecoration(
                    labelText: "Select Role",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Handle "Forgot Password" navigation
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Call the login function from the ViewModel with the role
                        model.login(
                          _emailController.text.trim(),
                          _passwordController.text.trim(),
                          model.selectedRole, // Pass selected role
                        );
                      },
                      child: model.isBusy
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              "Log In",
                              style: TextStyle(color: Colors.white),
                            ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color(0xFF53B175), // Green color from design
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account? "),
                      GestureDetector(
                        onTap: () {
                          // Navigate to Signup page
                        },
                        child: Text(
                          "Singup",
                          style: TextStyle(color: Color(0xFF53B175)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
