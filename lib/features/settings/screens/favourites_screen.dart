import 'package:empat_flutter_week_8/core/util/favourites_screen_args.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  final String email;
  final String name;

  const FavouritesScreen({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourites'), backgroundColor: Colors.green),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            const SizedBox(height: 10),
            Text(email),
          ],
        ),
      ),
    );
  }
}
