import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_api_bloc_app/Presentation/Screens/Homepage/UI/homepage.dart';

import '../../BusinessLogic/bloc/homepage_bloc.dart';

class RouteGenerator {
  final HomepageBloc _homepageBloc = HomepageBloc();

  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<HomepageBloc>.value(
            value: _homepageBloc,
            child: const HomePage(),
          ),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
