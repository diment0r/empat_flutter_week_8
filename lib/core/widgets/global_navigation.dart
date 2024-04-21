import 'package:empat_flutter_week_8/features/settings/settings_navigator.dart';
import 'package:empat_flutter_week_8/features/joke_list/presentation/joke_navigator.dart';
import 'package:flutter/material.dart';

class GlobalNavigationWidget extends StatefulWidget {
  const GlobalNavigationWidget({super.key});

  @override
  State<GlobalNavigationWidget> createState() => _GlobalNavigationWidgetState();
}

class _GlobalNavigationWidgetState extends State<GlobalNavigationWidget> {
  int currentIndex = 0;
  late PageController pageController;

  final List<BottomNavigationBarItem> navBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.newspaper),
      label: 'News',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'Favourites',
    ),
  ];

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onNavBarItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void onPageChanged(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 40),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dimentor'),
      //   backgroundColor: Colors.green,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.green,
        currentIndex: currentIndex,
        onTap: onPageChanged,
        items: navBarItems,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onNavBarItemTap,
        children: const [
          JokeNavigatorWidget(),
          FavouritesNavigatorWidget(),
        ],
      ),
    );
  }
}
