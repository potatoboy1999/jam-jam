import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jam_jam/widgets/LargeButton.dart';
import 'package:jam_jam/States/home.dart';
import 'package:jam_jam/util/ui_styles.dart';

class LoginPage extends StatefulWidget {
  static final String id = "login_page";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  void initState() {
    emailController = new TextEditingController();
    passwordController = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = sWidth(context, 10);
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: sHeight(context, 10),), //80
                // LOGO
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
                SizedBox(height: sHeight(context, 14),),
                // LABEL EMAIL
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                      child: Text("Correo Electrónico",style: loginLabelsTS,)
                    )
                  ],
                ),
                // INPUT EMAIL
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: kMainOrange, width: 2)
                        ),
                        width: sWidth(context,80),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "email@gmail.com",
                            hintStyle: loginHintsTS,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontRaleway
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                // LABEL PASSWORD
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                        child: Text("Contraseña",style: loginLabelsTS,)
                    )
                  ],
                ),
                // INPUT PASSWORD
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: kMainOrange, width: 2)
                        ),
                        width: sWidth(context,80),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "**********",
                            hintStyle: loginHintsTS,
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontRaleway
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                // FORGOT PASSWORD
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                      child: Text("olvidé mi contraseña",style: forgotPasswordTS,),
                    )
                  ],
                ),
                // BUTTON LOGIN
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                      child: LargeButton(
                        height: 45,
                        width: sWidth(context, 80),
                        text: "Ingresar",
                        bg_color: kMainOrange,
                        onPressed: (){
                          Navigator.pushNamed(context, HomePage.id);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sHeight(context, 10),), //80
                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
