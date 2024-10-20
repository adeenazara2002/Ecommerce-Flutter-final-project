import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class ExploreViewModel extends BaseViewModel {
  // List of all categories
  List<Map<String, dynamic>> allCategories = [
    {
      'title': 'Fresh Fruits & Vegetable',
      'imagePath': 'assets/images/vegetable.png',
      'color': Colors.green[100],
    },
    {
      'title': 'Cooking Oil & Ghee',
      'imagePath': 'assets/images/oil.png',
      'color': Colors.orange[100],
    },
    {
      'title': 'Meat & Fish',
      'imagePath': 'assets/images/meat.png',
      'color': Colors.pink[100],
    },
    {
      'title': 'Bakery & Snacks',
      'imagePath': 'assets/images/bakery.png',
      'color': Colors.purple[100],
    },
    {
      'title': 'Dairy & Eggs',
      'imagePath': 'assets/images/dairy.png',
      'color': Colors.yellow[100],
    },
    {
      'title': 'Beverages',
      'imagePath': 'assets/images/beverages.png',
      'color': Colors.blue[100],
    },
  ];

  // Filtered list to display based on search query
  List<Map<String, dynamic>> filteredCategories = [];

  ExploreViewModel() {
    // Initialize the filtered list with all categories initially
    filteredCategories = allCategories;
  }

  // Method to filter categories based on search input
  void searchCategories(String query) {
    if (query.isEmpty) {
      // Show all categories if search query is empty
      filteredCategories = allCategories;
    } else {
      // Filter categories based on search query
      filteredCategories = allCategories
          .where((category) =>
              category['title'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners(); // Notify the view to update the UI
  }
}
