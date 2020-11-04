import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// MediaQuery functions
double sWidth(BuildContext context,double perc){
  return MediaQuery.of(context).size.width * (perc/100);
}
double sHeight(BuildContext context,double perc){
  return MediaQuery.of(context).size.height * (perc/100);
}

//----------------- FONT FAMILY
const String fontRaleway = "Raleway";

//----------------- IMAGE PATH
const String welcomeBgImg = "assets/img/welcome_img_cropped2.jpg";
const String appLogoImg = "assets/img/appLogo.png";

//----------------- COLORS
const Color kYellowLight = Color(0XFFFFF6D3);
const Color kMainOrange = Color(0XFFEA8F3C);
const Color fbMainColor = Color(0XFF3855EE);

//------------------ TEXT StyleElement
const TextStyle commonTS = TextStyle(fontFamily: fontRaleway, color: Colors.black);
const TextStyle appBarTS = TextStyle(fontFamily: fontRaleway, color: Color(0xFFFFF5D2));
const TextStyle registerLinkTS = TextStyle(fontFamily: fontRaleway, color: kMainOrange, decoration: TextDecoration.underline);
const TextStyle largeBtnTS = TextStyle(fontFamily: fontRaleway, color: Colors.white, fontSize: 20);
const TextStyle loginLabelsTS = TextStyle(fontFamily: fontRaleway, color: Colors.white, fontSize: 15);
const TextStyle loginHintsTS = TextStyle(fontFamily: fontRaleway, color: Color.fromRGBO(250, 250, 250, 0.7), fontSize: 14);
const TextStyle forgotPasswordTS = TextStyle(fontFamily: fontRaleway, color: Colors.white,fontSize: 14, decoration: TextDecoration.underline);

//------------------ BOX DECORATIONS

const BoxDecoration welcomeBoxDecoration = BoxDecoration(
  color: Colors.black,
  image: DecorationImage(
      image: AssetImage(welcomeBgImg),
      fit: BoxFit.fitHeight,
      alignment: Alignment.centerRight,
      colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.85), BlendMode.dstATop)
  ),
);
const BoxDecoration loginBoxDecoration = BoxDecoration(
  color: Colors.black,
  image: DecorationImage(
      image: AssetImage(welcomeBgImg),
      fit: BoxFit.fitHeight,
      alignment: Alignment.centerRight,
      colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.45), BlendMode.dstATop)
  ),
);
