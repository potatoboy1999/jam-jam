import 'package:flutter/material.dart';
import 'package:jam_jam/States/current_order.dart';
import 'package:jam_jam/States/history.dart';
import 'package:jam_jam/States/order.dart';
import 'package:jam_jam/util/styles.dart';

import '../util/styles.dart';
import '../util/styles.dart';
import '../util/styles.dart';
import '../util/styles.dart';

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
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, OrderPage.id);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kHomeOptionBg,
                    image: DecorationImage(
                      image: AssetImage(order_bg),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.50), BlendMode.dstATop)
                    ),
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
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, HistoryPage.id);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: kHomeOptionBg,
                              image: DecorationImage(
                                  image: AssetImage(history_bg),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.50), BlendMode.dstATop)
                              ),
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
                      ),
                      Container(
                        height: heightInner,
                        width: widthInner,
                        padding: EdgeInsets.all(padding),
                        child: GestureDetector(
                          onTap:(){
                            Navigator.pushNamed(context, CurrentOrderPage.id);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: kHomeOptionBg,
                                image: DecorationImage(
                                    image: AssetImage(pedidos_bg),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.50), BlendMode.dstATop)
                                ),
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

