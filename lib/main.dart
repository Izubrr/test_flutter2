import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
              tooltip: 'NavigationMenu'),
          Expanded(child: title),
          const IconButton(
              onPressed: null, icon: Icon(Icons.search), tooltip: 'Search')
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({required super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
              title: Text('Example Title',
                  style: Theme.of(context).primaryTextTheme.titleLarge)),
          const Expanded(
              child: Center(
            child: Text('Hello World!'),
          ))
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'MyApp',
    home: SafeArea(child: MyScaffold(key: null)),
  ));
}
