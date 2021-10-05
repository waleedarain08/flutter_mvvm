
import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'model/services/navigation_service.dart';
import 'model/utils/service_locator.dart';
import '../../model/utils/routes.dart';
import '../view_model/providers/auth_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  setupLocator();
  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) =>
    MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MultiProvider(
              providers: [
                ChangeNotifierProvider.value(
                  value: AuthProvider(),
                )
              ],
              child: MaterialApp(
                // builder: DevicePreview.appBuilder,
                title: 'B2Connect',
                color: Theme.of(context).backgroundColor,
                debugShowCheckedModeBanner: false,
                // locale: DevicePreview.locale(context),
                navigatorKey: locator<NavigationService>().navigatorKey,
                theme: ThemeData(
                  backgroundColor: Color.fromRGBO(31, 106, 247, 1),
                  // primaryColor: Color.fromRGBO(7, 29, 89, 1),
                  accentColor: Color.fromRGBO(31, 106, 247, 1),
                  visualDensity: VisualDensity.adaptivePlatformDensity,

                  // Define the default font family.
                  fontFamily: 'Roboto',
                ),
                onGenerateRoute: onGenerateRoute,
                initialRoute: SplashScreenRoute,
              ),
            ));
  }
}
