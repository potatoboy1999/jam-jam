import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jam_jam/widgets/large_button.dart';
import 'package:jam_jam/States/login.dart';
import 'package:jam_jam/States/register.dart';
import 'package:jam_jam/util/styles.dart';

class WelcomePage extends StatefulWidget{
  WelcomePage({Key key}):super(key: key);
  static const String id = 'welcome_page';
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>{
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // color: Colors.orangeAccent,
        decoration: welcomeBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //width: 150,
                  height: 120,
                  child: Image.asset(appLogoImg),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 200,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                color: kYellowLight.withOpacity(0.8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      LargeButton(
                        height: 45,
                        width: sWidth * .9,
                        text: "Ingresar con Correo",
                        bg_color: kMainOrange,
                        onPressed: ()
                          =>Navigator.pushNamed(context, LoginPage.id),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      LargeButton(
                        height: 45,
                        width: sWidth * .9,
                        text: "Ingresar con FB",
                        bg_color: fbMainColor,
                        onPressed: ()
                          =>Navigator.pushNamed(context, LoginPage.id),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("¿No Tienes una Cuenta?", style: commonTS,),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: ()=>Navigator.pushNamed(context, RegisterPage.id),
                        child: Text("Registrate Aquí", style: registerLinkTS,)
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}