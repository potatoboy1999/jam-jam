import 'package:flutter/material.dart';
import 'package:jam_jam/util/styles.dart';

class SettingsPage extends StatefulWidget {
  static const String id = "settings_page";
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Configuración",
          style: TextStyle(
            color: Colors.white,
            fontFamily: fontRaleway,
          ),
        ),
        backgroundColor: kMainOrange,
      ),
      body: Container(),
    );
  }
}
