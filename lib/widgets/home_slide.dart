import 'package:flutter/material.dart';

class HomeSlide extends StatelessWidget {
  final String img;
  HomeSlide({this.img});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        double height = constraints.maxHeight;
        double width = constraints.maxWidth;
        return Container(
          height: height,
          width: width,
          child: Image.asset(
            this.img,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
