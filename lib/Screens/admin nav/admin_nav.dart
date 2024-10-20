import 'package:ecommerce_flutter_project/Screens/add/add_view.dart';
import 'package:ecommerce_flutter_project/Screens/admin%20nav/admin_nav_viewModel.dart';
import 'package:ecommerce_flutter_project/Screens/explore/explore_view.dart';
import 'package:ecommerce_flutter_project/Screens/profile/profileView.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BottomNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavViewModel>.reactive(
      viewModelBuilder: () => BottomNavViewModel(),
      builder: (context, model, child) => Scaffold(
        body: _getViewForIndex(model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          // Setting unselected and selected item colors
          unselectedItemColor:
              Colors.black, // Color for unselected icons/labels
          selectedItemColor: Colors.green, // Color for selected icons/labels
          unselectedLabelStyle: TextStyle(color: Colors.black),
          selectedLabelStyle: TextStyle(color: Colors.green),
          showUnselectedLabels: true, // Ensure unselected labels are visible
          showSelectedLabels: true, // Ensure selected labels are visible
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }

  Widget _getViewForIndex(int index) {
    switch (index) {
      case 0:
        return ExploreView();
      case 1:
        return ExploreView();
      case 2:
        return AddView();
      case 3:
        return ProfileView();
      default:
        return ExploreView();
    }
  }
}
