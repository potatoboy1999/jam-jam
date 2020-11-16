import 'package:flutter/material.dart';
import 'package:jam_jam/States/address.dart';
import 'package:jam_jam/States/payments.dart';
import 'package:jam_jam/States/settings.dart';
import 'package:jam_jam/util/styles.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Freddy Morales",
              style: TextStyle(
                fontFamily: fontRaleway,
                fontWeight: FontWeight.w700,
              ),
            ),
            accountEmail: Text(
              "Freddo@gmail.com",
              style: TextStyle(fontFamily: fontRaleway),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(avatar),
            ),
            decoration: BoxDecoration(
              color: kMainOrange,
              image: DecorationImage(
                image: AssetImage(sidebar_img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _DrawerOption(
            color: Color(0xFF8CDA5C),
            title: "Inicio",
            iconData: Icons.home,
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          _DrawerOption(
            color: Color(0xFF9DBEF0),
            title: "Opciones de Pago",
            iconData: Icons.credit_card,
            onPressed: (){
              Navigator.of(context).pushNamed(PaymentsPage.id);
            },
          ),
          _DrawerOption(
            color: Color(0xFFD4F280),
            title: "Libro de Direcciones",
            iconData: Icons.location_on,
            onPressed: (){
              Navigator.of(context).pushNamed(AddressPage.id);
            },
          ),
          _DrawerOption(
            color: Color(0xFFA8A8A8),
            title: "Configuración",
            iconData: Icons.settings,
            onPressed: (){
              Navigator.of(context).pushNamed(SettingsPage.id);
            },
          ),
          _DrawerOption(
            color: Colors.redAccent,
            title: "Salir",
            iconData: Icons.exit_to_app,
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerOption extends StatelessWidget {
  final Color color;
  final String title;
  final IconData iconData;
  final Function onPressed;
  _DrawerOption({
    @required this.color,
    @required this.title,
    @required this.iconData,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: this.color,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(10),
        child: Icon(this.iconData, color: Colors.black,),
      ),
      title: Text(this.title, style: TextStyle(fontFamily: fontRaleway)),
      onTap: this.onPressed,
    );
  }
}
