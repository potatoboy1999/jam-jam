import 'package:flutter/material.dart';
import 'package:jam_jam/util/ui_styles.dart';

import '../util/ui_styles.dart';
import '../util/ui_styles.dart';
import '../util/ui_styles.dart';
import '../util/ui_styles.dart';

class MainMenuOptionsGrid extends StatefulWidget {
  @override
  _MainMenuOptionsGridState createState() => _MainMenuOptionsGridState();
}

class _MainMenuOptionsGridState extends State<MainMenuOptionsGrid> {
  @override
  Widget build(BuildContext context) {
    double padding = 5;
    return LayoutBuilder(
      builder: (context, constraints) {
        double height = constraints.maxWidth;
        double width = constraints.maxWidth;
        return Column(
          children: [
            Container(
              height: height * (1/2),
              width: width,
              padding: EdgeInsets.all(padding),
              child: Container(
                decoration: BoxDecoration(
                  color: kMainOrange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: kMainTextColor,
                      size: 70,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Crear una\norden",
                          style: TextStyle(
                            color: kMainTextColor,
                            fontFamily: fontRaleway,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * (1/2),
              width: width,
              child: LayoutBuilder(
                builder: (context, constraints){
                  double heightInner = constraints.maxHeight;
                  double widthInner = constraints.maxHeight;
                  return Row(
                    children: [
                      Container(
                        height: heightInner,
                        width: widthInner,
                        padding: EdgeInsets.all(padding),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kMainOrange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: kMainTextColor,
                                size: 70,
                              ),
                              SizedBox(height: heightInner * 0.05,),
                              Text(
                                "Ver Historial",
                                style: TextStyle(
                                  color: kMainTextColor,
                                  fontFamily: fontRaleway,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                      Container(
                        height: heightInner,
                        width: widthInner,
                        padding: EdgeInsets.all(padding),
                        child: Container(
                            decoration: BoxDecoration(
                              color: kMainOrange,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.assignment,
                                  color: kMainTextColor,
                                  size: 70,
                                ),
                                SizedBox(height: heightInner * 0.05,),
                                Text(
                                  "Ver Pedido",
                                  style: TextStyle(
                                    color: kMainTextColor,
                                    fontFamily: fontRaleway,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      }
    );
  }
}

