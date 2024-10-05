import 'package:ecommerce_flutter_project/Screens/SignIn/signIn_viewmodel.dart';
import 'package:ecommerce_flutter_project/Screens/SignIn/signIn_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignInView extends StackedView<SignInViewModel> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignInViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          children: [
            // SizedBox(
            //   height: 280,
            // ),
            Row(
              children: [
                Image.asset('assets/images/veges.png'),
              ],
            )
            
          ],
        ),
      ),
    );
  }

  @override
  SignInViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignInViewModel();
}
