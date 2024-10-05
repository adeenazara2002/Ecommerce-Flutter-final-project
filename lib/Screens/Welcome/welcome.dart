import 'package:ecommerce_flutter_project/Screens/Welcome/welcome_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StackedView<WelcomeViewModel> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WelcomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 100),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    Image.asset('assets/images/logoGreen.png'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    Image.asset('assets/images/text.png'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    const Text(
                      'Desh ka market',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color.fromRGBO(134, 134, 134, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Features Section (Icons + Text)
                buildFeatureRow('assets/images/leaf.png', 'Organic Groceries'),
                buildDivider(),
                buildFeatureRow(
                    'assets/images/orange.png', 'Whole food and vegetable'),
                buildDivider(),
                buildFeatureRow('assets/images/bus.png', 'Fast Delivery'),
                buildDivider(),
                buildFeatureRow(
                    'assets/images/bag.png', 'Easy refund and return'),
                buildDivider(),
                buildFeatureRow('assets/images/secure.png', 'Secure and safe'),
                
              ],
            ),
            
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 202, 68, 1),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome to our store',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Get your grocery in as fast as',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'one hour',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Get Started Button
                    ElevatedButton(
                      onPressed: () {
                        // Add navigation or functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.white, 
                        foregroundColor:
                            const Color.fromRGBO(0, 202, 68, 1), 
                        padding: const EdgeInsets.symmetric(
                          horizontal: 90,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  WelcomeViewModel viewModelBuilder(BuildContext context) => WelcomeViewModel();

  // Helper method for feature row (icon + text)
  Widget buildFeatureRow(String imagePath, String text) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 50)),
        Image.asset(imagePath),
        const SizedBox(width: 25),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color.fromRGBO(134, 134, 134, 1),
          ),
        ),
      ],
    );
  }

  // Helper method for dividers (line image)
  Widget buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Image.asset('assets/images/line.png'),
    );
  }
}
