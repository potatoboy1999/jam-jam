import 'package:jam_jam/States/address.dart';
import 'package:jam_jam/States/current_order.dart';
import 'package:jam_jam/States/history.dart';
import 'package:jam_jam/States/home.dart';
import 'package:jam_jam/States/login.dart';
import 'package:jam_jam/States/order.dart';
import 'package:jam_jam/States/payments.dart';
import 'package:jam_jam/States/register.dart';
import 'package:jam_jam/States/settings.dart';
import 'package:jam_jam/States/welcome.dart';

class Routes{
  static routes(){
    return {
      WelcomePage.id      :(context) => WelcomePage(),
      LoginPage.id        :(context) => LoginPage(),
      RegisterPage.id     :(context) => RegisterPage(),
      HomePage.id         :(context) => HomePage(),
      PaymentsPage.id     :(context) => PaymentsPage(),
      AddressPage.id      :(context) => AddressPage(),
      SettingsPage.id     :(context) => SettingsPage(),
      OrderPage.id        :(context) => OrderPage(),
      HistoryPage.id      :(context) => HistoryPage(),
      CurrentOrderPage.id :(context) => CurrentOrderPage(),
    };
  }

  static initScreen(){
    return WelcomePage.id;
  }
}