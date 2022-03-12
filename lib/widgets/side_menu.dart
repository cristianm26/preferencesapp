import 'package:flutter/material.dart';
import 'package:preferencesapp/screens/home_screens.dart';
import 'package:preferencesapp/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          _ListTile(
            icon: Icons.home,
            title: 'Home',
            tap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          _ListTile(
            icon: Icons.people_outline,
            title: 'People',
            tap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          _ListTile(
            icon: Icons.settings,
            title: 'Settings',
            tap: () {
              Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() tap;
  const _ListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: tap,
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
