import 'package:ecommerce_flutter_project/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = StackedService.navigatorKey?.currentState;

  SplashViewModel() {
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 3));

    _navigationService?.pushReplacementNamed(Routes.welcomeView);
  }
}
