import 'package:ecommerce_flutter_project/Screens/profile/profileViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Profile'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              // Profile Image
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.person, size: 50, color: Colors.grey),
              ),
              SizedBox(height: 10),
              // User Name and Email
              Text('Mr. Nitish Kumar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('Nitishr833@gmail.com',
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              SizedBox(height: 20),
              // Orders, Payments, Address buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildIconButton(Icons.shopping_cart, 'Orders'),
                    _buildIconButton(Icons.payment, 'Payments'),
                    _buildIconButton(Icons.location_on, 'Address'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Options list (User Details, Settings, etc.)
              _buildProfileOption(Icons.person, 'User Details'),
              _buildProfileOption(Icons.settings, 'Settings'),
              _buildProfileOption(Icons.help, 'Help & Supports'),
              _buildProfileOption(Icons.language, 'Change Language'),
              _buildProfileOption(Icons.logout, 'Logout', Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  // Icon button for Orders, Payments, Address
  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {},
        ),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  // Profile option list item
  Widget _buildProfileOption(IconData icon, String label, [Color? color]) {
    return ListTile(
      leading: Icon(icon, color: color ?? Colors.black),
      title: Text(label),
      onTap: () {
        // Handle navigation or actions
      },
    );
  }
}
