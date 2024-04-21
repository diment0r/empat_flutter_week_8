import 'package:empat_flutter_week_8/core/util/colors.dart';
import 'package:empat_flutter_week_8/core/util/favourites_screen_args.dart';
import 'package:empat_flutter_week_8/features/settings/components/settings_tile.dart';
import 'package:empat_flutter_week_8/features/settings/screens/favourites_screen.dart';
import 'package:empat_flutter_week_8/features/settings/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final List<String> settingLabels = [
    'Profile',
    'Favourites',
  ];

  final List<IconData> settingIcons = [
    Icons.person,
    Icons.favorite,
  ];

  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Settings'), backgroundColor: Colors.green),
      body: CustomScrollView(
        slivers: [
          SliverList.separated(
            itemCount: settingLabels.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                }
                if (index == 1) {
                  Navigator.pushNamed(
                    context,
                    '/favourites',
                    arguments: FavouritesScreenArguments(
                      name: 'Dima',
                      email: 'dmitriyprudnyk.workmail@gmail.com',
                    ),
                  );
                }
                // if (index == 1) {
                //   Navigator.pushNamed(
                //     context,
                //     '/favourites',
                //     arguments: 1,
                //   );
                // }
              },
              child: SettingsTileWidget(
                setting: settingLabels[index],
                icon: settingIcons[index],
              ),
            ),
            separatorBuilder: (context, index) => Container(
                width: double.infinity, height: 1, color: CColors.darkGrey),
          ),
        ],
      ),
    );
  }
}
