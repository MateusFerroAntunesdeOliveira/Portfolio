import 'package:flutter/material.dart';

import 'pages/achievements/achievements.page.dart';
import 'pages/configpage/config.page.dart';
import 'pages/home/home.page.dart';

class MfaoRoutes {
  static const Home = '/';
  static const Config = '/config';
  static const Achievements = '/achievements';
}

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  Route<dynamic> page(Widget widget) => FadePageRoute(
        builder: (context) => MediaQuery(
          child: widget,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        ),
        settings: settings,
      );

  switch (settings.name) {
    case MfaoRoutes.Home:
      return page(HomePage());
    case MfaoRoutes.Config:
      return page(ConfigPage());
    case MfaoRoutes.Achievements:
      return page(AchievementsPage());
    default:
      return page(HomePage());
  }
}

class FadePageRoute<T> extends PageRoute<T> {
  final Widget Function(BuildContext) builder;
  final RouteSettings settings;

  FadePageRoute({required this.builder, required this.settings}) : super(settings: settings);

  @override
  Color get barrierColor => Colors.transparent;

  @override
  String get barrierLabel => settings.name ?? "";

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) =>
      FadeTransition(opacity: animation, child: builder(context));

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 300);
}
