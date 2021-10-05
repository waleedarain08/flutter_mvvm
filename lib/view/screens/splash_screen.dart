import 'dart:async';


import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../model/services/navigation_service.dart';
import '../../model/services/storage_service.dart';
import '../../model/utils/service_locator.dart';
import '../../model/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var navigationService = locator<NavigationService>();
  var storageService = locator<StorageService>();

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () async {

      navigationService.navigateTo(LoginScreenRoute);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    // Future<bool> _onBackPressed() {
    //   return showDialog(
    //         context: context,
    //         builder: (context) => ExitAlertDialog(),
    //       ) ??
    //       false;
    // }

    return WillPopScope(
      onWillPop: null,
      child: Stack(
          // fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splash.png'),
                    fit: BoxFit.cover),
              ),
            ),
            // Positioned(
            //   child: Align(
            //       alignment: FractionalOffset.center,
            //       child: Container(
            //         child:
            //             // Container(child: Image.asset('assets/images/logo.png')),
            //             ShowUpAnimation(
            //           delayStart: Duration(milliseconds: 200),
            //           animationDuration: Duration(seconds: 1),
            //           curve: Curves.bounceIn,
            //           direction: Direction.vertical,
            //           offset: 0.7,
            //           child: Image.asset(
            //             'assets/images/splash-logo.png',
            //             scale: 3.5,
            //           ),
            //         ),
            //       )),
            // ),
          ]),
    );
  }
}
