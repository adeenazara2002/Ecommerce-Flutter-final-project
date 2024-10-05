import 'package:ecommerce_flutter_project/Screens/Splash/splash.dart'; // Correct import
import 'package:ecommerce_flutter_project/Screens/Welcome/welcome.dart';
import 'package:ecommerce_flutter_project/ui/views/home/home_view.dart';
import 'package:ecommerce_flutter_project/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView),  // Use correct class reference
    MaterialRoute(page: WelcomeView),
    // MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
  ],
)
class App {}
