import 'package:flutter/material.dart';

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // Check if the current route is the initial route
    if (settings.name == '/') return child;
    // Create a slide animation from the right
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    var tween = Tween(begin: begin, end: end);

    var offsetAnimation = animation.drive(tween);
    // Use SlideTransition to apply the slide animation
    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
