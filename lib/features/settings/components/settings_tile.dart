import 'package:empat_flutter_week_8/core/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsTileWidget extends StatelessWidget {
  final String setting;
  final IconData icon; 

  const SettingsTileWidget({super.key, required this.setting, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
      decoration: BoxDecoration(color: CColors.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(setting, style: const TextStyle(fontSize: 16),),
          Icon(icon, color: const Color.fromARGB(255, 71, 71, 71),),
        ],
      ),
    );
  }
}
