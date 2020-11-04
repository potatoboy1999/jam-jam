import 'package:jam_jam/States/home.dart';
import 'package:jam_jam/States/login.dart';
import 'package:jam_jam/States/register.dart';
import 'package:jam_jam/States/welcome.dart';

class Routes{
  static routes(){
    return {
      WelcomePage.id:(context) => WelcomePage(),
      LoginPage.id:(context)=> LoginPage(),
      RegisterPage.id:(context)=> RegisterPage(),
      HomePage.id:(context)=> HomePage(),
    };
  }

  static initScreen(){
    return WelcomePage.id;
  }
}