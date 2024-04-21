import 'package:empat_flutter_week_8/core/error_screens/404_screen.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/screens/joke_list_screen.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/screens/joke_dialog_screen.dart';
import 'package:flutter/material.dart';

class JokeNavigatorWidget extends StatefulWidget {
  const JokeNavigatorWidget({super.key});

  @override
  State<JokeNavigatorWidget> createState() => _JokeNavigatorWidgetState();
}

class _JokeNavigatorWidgetState extends State<JokeNavigatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) {
        switch (settings.name) {
          case '/':
            return const JokeListScreen();
        }
        return const RouteNotFoundScreen();
      }),
    );
  }
}
