import 'package:empat_flutter_week_8/core/error_screens/404_screen.dart';
import 'package:empat_flutter_week_8/core/util/favourites_screen_args.dart';
import 'package:empat_flutter_week_8/features/settings/screens/favourites_screen.dart';
import 'package:empat_flutter_week_8/features/settings/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class FavouritesNavigatorWidget extends StatefulWidget {
  const FavouritesNavigatorWidget({super.key});

  @override
  State<FavouritesNavigatorWidget> createState() =>
      _FavouritesNavigatorWidgetState();
}

class _FavouritesNavigatorWidgetState extends State<FavouritesNavigatorWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Navigator(
      onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) {
        switch (settings.name) {
          case '/':
            return SettingsScreen();
          case '/favourites':
            final args = settings.arguments as FavouritesScreenArguments;
            return FavouritesScreen(
              name: args.name,
              email: args.email,
            );
        }
        return const RouteNotFoundScreen();
      }),
    );
  }
}
