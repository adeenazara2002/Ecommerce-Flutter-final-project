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
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Image.asset('assets/images/logoGreen.png')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Image.asset('assets/images/text.png')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Text(
                  'Desh ka market',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Image.asset('assets/images/leaf.png'),
                Padding(padding: EdgeInsets.only(left: 25)),
                Text(
                  'Organic Groceries',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset('assets/images/line.png'),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Image.asset('assets/images/orange.png'),
                Padding(padding: EdgeInsets.only(left: 25)),
                Text(
                  'Whole food and vegetable',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset('assets/images/line.png'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Image.asset('assets/images/bus.png'),
                Padding(padding: EdgeInsets.only(left: 25)),
                Text(
                  'Fast Delivery',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset('assets/images/line.png'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Image.asset('assets/images/bag.png'),
                Padding(padding: EdgeInsets.only(left: 25)),
                Text(
                  'Easy refund and return',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset('assets/images/line.png'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50)),
                Image.asset('assets/images/secure.png'),
                Padding(padding: EdgeInsets.only(left: 25)),
                Text(
                  'Secure and safe',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset('assets/images/line.png'),
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  @override
  WelcomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WelcomeViewModel();
}
