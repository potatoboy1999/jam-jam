import 'package:flutter/material.dart';
import 'package:jam_jam/util/styles.dart';

class AddressPage extends StatefulWidget {
  static const String id = "address_page";
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Libro de Direcciones",
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
