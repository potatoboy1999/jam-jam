import 'package:flutter/material.dart';
import 'package:jam_jam/util/styles.dart';

class PaymentsPage extends StatefulWidget {
  static const String id = "payments_page";
  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Opciones de Pago",
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
