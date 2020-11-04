import 'package:flutter/material.dart';
import 'package:jam_jam/util/ui_styles.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){},
      child: Scaffold(
        appBar: AppBar(
          title: Text("JamJam",style: appBarTS,),
          backgroundColor: kMainOrange,
          leading: Icon(Icons.menu),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Text(
                      "Platillos de Hoy",
                      style: TextStyle(
                        fontFamily: fontRaleway,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: sWidth(context, 100),
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
