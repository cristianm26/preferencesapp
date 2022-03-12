import 'package:flutter/material.dart';
import 'package:preferencesapp/share_preferences/preferences.dart';
import 'package:preferencesapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Modo Obscuro: ${Preferences.isDarkmode} '),
            const Divider(),
            Text('Genero: ${Preferences.gender} '),
            const Divider(),
            Text('Nombre Usuario: ${Preferences.name} '),
            const Divider(),
          ],
        ));
  }
}
