import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jam_jam/CustomWidgets/FormInput.dart';
import 'package:jam_jam/CustomWidgets/LargeButton.dart';
import 'package:jam_jam/States/login.dart';
import 'package:jam_jam/States/welcome.dart';
import 'package:jam_jam/util/ui_styles.dart';

class RegisterPage extends StatefulWidget {
  static final String id = "register_page";
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController,
      phoneController,
      birthdayController,
      emailController,
      passwordController;

  @override
  void initState() {
    nameController = new TextEditingController();
    phoneController = new TextEditingController();
    birthdayController = new TextEditingController();
    emailController = new TextEditingController();
    passwordController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: loginBoxDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,//sHeight(context,100),
          width: double.infinity,//sWidth(context, 100),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: sHeight(context, 15),),
                // INPUT NAME
                FormInput(
                  labelText: "Nombre",
                  hintText: "Nombres y Apellidos",
                  controller: nameController,
                  keyboardType: TextInputType.emailAddress
                ),
                SizedBox(height: 15,),
                // INPUT PASSWORD
                FormInput(
                  labelText: "Teléfono",
                  hintText: "777888555",
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 15,),
                // INPUT PASSWORD
                FormInput(
                  labelText: "Fecha de Nacimiento",
                  hintText: "12-05-1997",
                  controller: birthdayController,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 15,),
                // INPUT EMAIL
                FormInput(
                    labelText: "Correo Electrónico",
                    hintText: "email@email.pe",
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress
                ),
                SizedBox(height: 15,),
                // INPUT PASSWORD
                FormInput(
                  labelText: "Contraseña",
                  hintText: "**********",
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                // BUTTON LOGIN
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: sWidth(context,10)),
                      child: LargeButton(
                        height: 45,
                        width: sWidth(context, 80),
                        text: "Registrar",
                        bg_color: kMainOrange,
                        onPressed: (){
                          Navigator.pushNamedAndRemoveUntil(context, LoginPage.id,ModalRoute.withName(WelcomePage.id));
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sHeight(context, 5),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
