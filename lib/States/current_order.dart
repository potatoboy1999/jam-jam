import 'package:flutter/material.dart';
import 'package:jam_jam/util/styles.dart';

class CurrentOrderPage extends StatefulWidget {
  static const String id = "current_order_page";
  @override
  _CurrentOrderPageState createState() => _CurrentOrderPageState();
}

class _CurrentOrderPageState extends State<CurrentOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tus Pedidos",
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
