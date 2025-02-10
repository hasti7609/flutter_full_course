import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_flutter/provider_new/provider/count_provider.dart';
import 'package:starting_flutter/provider_new/provider/example_one_provider.dart';
import 'package:starting_flutter/provider_new/provider/favourite_provider.dart';
import 'package:starting_flutter/provider_new/provider/theme_provider.dart';
// import 'package:starting_flutter/provider_new/screen/favourite_app/favorite_home_screen.dart';
import 'package:starting_flutter/provider_new/screen/themes_screen/theme.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
       ChangeNotifierProvider(create: (_)=>CountProvider()),
       ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
       ChangeNotifierProvider(create: (_)=>AnimatedContainerProvider()),
       ChangeNotifierProvider(create: (_)=>FavouriteItemProvider()),
       ChangeNotifierProvider(create: (_)=>ThemeProvider()),
    ],
        child: Builder(
          builder: (context) {
            final themeProvider = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              title: 'Flutter Practice',
              themeMode: themeProvider.themeMode,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark
              ),
              home: ThemeScreen(),
            );
          }
        ));
  }
}

