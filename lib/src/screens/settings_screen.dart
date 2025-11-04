import 'package:flutter/material.dart';
import '../widgets/theme_switch.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 90,
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            elevation: 3.5,
            child: Center(
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    
                    children: [
                      Icon(Icons.nightlight_round, size: 30),
                    SizedBox(width: 10),
                      Text('Dark Mode', style: TextStyle(fontSize: 18.5)),
                    ],
                  ),

                  ThemeSwitch(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
