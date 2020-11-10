import 'package:flutter/material.dart';
import 'package:jam_jam/util/ui_styles.dart';

class LargeButton extends StatefulWidget{
  @required VoidCallback onPressed;
  final double height;
  final double width;
  final Color bg_color;
  final String text;


  LargeButton({Key key, this.height, this.width, this.bg_color, this.text, this.onPressed}):super(key:key);
  _LargeButtonState createState()=>_LargeButtonState();
}

class _LargeButtonState extends State<LargeButton>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: widget.bg_color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Color(0XFF000000).withOpacity(0.25),blurRadius: 4,offset: Offset(0,4))
          ]
      ),
      child: FlatButton(
        onPressed: widget.onPressed,
        child: Text(widget.text,
          textAlign: TextAlign.center,
          style: largeBtnTS,
        ),
        hoverColor: Colors.yellow,
      ),
    );

  }
}