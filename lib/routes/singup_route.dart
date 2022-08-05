import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/singup_screen.dart';

class SingupRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return SingupScreen(
      onLoginClick: () => nuvigator.open('login'),
    );
  }

  @override
  String get path => 'sing-up';

  @override
  ScreenType get screenType => materialScreenType;
}
