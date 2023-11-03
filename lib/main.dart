import 'package:flutter/material.dart';
import 'package:flutter_caster/home/discover/discover.dart';
import 'package:flutter_caster/theme/caster_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: FlutterCasterTheme.lightThemeData,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(
              tabs: [
                Tab(text: "Your library"),
                Tab(text: "Discover")
              ],
              labelColor: Theme
                  .of(context)
                  .colorScheme
                  .onPrimary,
            ),
          ),
          body: TabBarView(
            children: [
              Placeholder(),
              DiscoverPage()
            ],
          ),
        ),
      )
    );
  }
}
