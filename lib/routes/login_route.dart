import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/login_screen.dart';

class LoginRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return LoginScreen(
      onSingupClick: (parameters) => nuvigator.open('sing-up'),
      onHomeClick: (parameters) => nuvigator.open('home'),
    );
  }

  @override
  String get path => 'login';

  @override
  ScreenType get screenType => materialScreenType;
}
