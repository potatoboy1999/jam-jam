import 'package:flutter/material.dart';
import 'package:jam_jam/util/styles.dart';

class OrderPage extends StatefulWidget {
  static const String id = "order_page";
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalle de Orden",
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
