import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final bool fullscreen;

  const Layout({super.key, required this.child, this.fullscreen = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.orange,
              brightness: Brightness.light,
              primary: Colors.orange,
              secondary: Colors.blue,
            ),
            scaffoldBackgroundColor: Colors.white,
            appBarTheme:
                const AppBarTheme(elevation: 4, shadowColor: Colors.black),
            useMaterial3: true),
        home: Scaffold(
          appBar: fullscreen
              ? null
              : AppBar(
                  title: const Text('Pocket Grizzly'),
                  centerTitle: false,
                ),
          body: child,
          bottomNavigationBar: fullscreen
              ? null
              : BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings), label: 'Settings'),
                  ],
                ),
        ));
  }
}
