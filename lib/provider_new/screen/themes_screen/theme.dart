import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_flutter/provider_new/provider/theme_provider.dart';


class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Screen"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
           RadioListTile(
             title: Text("Light Theme"),
               value: ThemeMode.light,
               groupValue: themeMode.themeMode,
               onChanged: themeMode.setTheme
           ),
          RadioListTile(
              title: Text("Dark Theme"),
              value: ThemeMode.dark,
              groupValue: themeMode.themeMode,
              onChanged: themeMode.setTheme
          ),
          RadioListTile(
              title: Text("System Theme"),
              value: ThemeMode.system,
              groupValue: themeMode.themeMode,
              onChanged: themeMode.setTheme
          ),
        ],
      ),
    );
  }
}
