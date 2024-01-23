import 'package:flutter/material.dart';

import 'screens/draft_mode/draft_mode_page.dart';
import 'screens/main_menu/menu_button.dart';
import 'screens/open_packs_mode/free_packs_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wild Cards',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Wild Cards Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MenuButton('Open Packs', onPressed: () {
                  FreePacksPage();
                }),
                MenuButton('Draft Mode', onPressed: () {
                  DraftModePage();
                }),
              ]),
        ),
      ),
    );
  }
}

// TODO - mini menu with settings and credits, hamburger or something
