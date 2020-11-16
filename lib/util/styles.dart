import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// MediaQuery functions
double mqWidth(BuildContext context,double perc){
  return MediaQuery.of(context).size.width * (perc/100);
}
double mqHeight(BuildContext context,double perc){
  return MediaQuery.of(context).size.height * (perc/100);
}

//----------------- FONT FAMILY
const String fontRaleway = "Raleway";

//----------------- IMAGE PATH
const String welcomeBgImg = "assets/img/welcome_img_cropped2.jpg";
const String appLogoImg = "assets/img/appLogo.png";
const String arrozPollo = "assets/img/arroz_pollo.jpg";
const String cuscus = "assets/img/cuscus.jpeg";
const String ensalada = "assets/img/ensalada.jpg";
const String pasta = "assets/img/pasta.jpg";
const String history_bg = "assets/img/history_bg.png";
const String order_bg = "assets/img/order_bg.png";
const String pedidos_bg = "assets/img/pedidos_bg.png";
const String avatar = "assets/img/avatar_img.jpg";
const String sidebar_img = "assets/img/sidebar_img.png";

//----------------- COLORS
const Color kYellowLight = Color(0xFFFFF6D3);
const Color kMainOrange = Color(0xFFEA8F3C);
const Color fbMainColor = Color(0xFF3855EE);
const Color kMainTextColor = Color(0xFFFFF5D2);
const Color kHomeOptionBg = Color(0xFF022507);

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
