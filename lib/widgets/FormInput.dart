import 'package:flutter/material.dart';
import 'package:jam_jam/util/ui_styles.dart';

class FormInput extends StatefulWidget{
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;

  FormInput({
    @required
    this.labelText,
    @required
    this.hintText,
    @required
    this.controller,
    @required
    this.keyboardType,
    this.obscureText
  });

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // LABEL EMAIL
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: sWidth(context,10)),
                child: Text(widget.labelText,style: loginLabelsTS,)
            )
          ],
        ),
        // INPUT EMAIL
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: sWidth(context,10)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: kMainOrange, width: 2)
                ),
                width: sWidth(context,80),
                child: TextFormField(
                  keyboardType: widget.keyboardType,
                  controller: widget.controller,
                  obscureText: widget.obscureText!=null?widget.obscureText:false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
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
      ],
    );
  }
}
