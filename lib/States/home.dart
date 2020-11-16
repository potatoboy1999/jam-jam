import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jam_jam/util/styles.dart';
import 'package:jam_jam/widgets/app_drawer.dart';
import 'package:jam_jam/widgets/home_slide.dart';
import 'package:jam_jam/widgets/home_slider_indicator.dart';
import 'package:jam_jam/widgets/main_menu_options_grid.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  CarouselController _carouselCarrousel = new CarouselController();
  List<Widget> _items;
  int _current = 0;

  setSlides(){
    _items = [
      HomeSlide(img: cuscus,),
      HomeSlide(img: arrozPollo,),
      HomeSlide(img: pasta,),
      HomeSlide(img: ensalada,),
    ];
  }

  @override
  Widget build(BuildContext context) {
    setSlides();

    return WillPopScope(
      onWillPop: (){},
      child: Scaffold(
        appBar: AppBar(
          title: Text("JamJam",style: appBarTS,),
          backgroundColor: kMainOrange,
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Text(
                        "Platillos de Hoy",
                        style: TextStyle(
                          fontFamily: fontRaleway,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: mqWidth(context, 100),
                  height: 200,
                  child: CarouselSlider(
                    carouselController: _carouselCarrousel,
                    items: _items.map((e) {
                      return Builder(builder: (BuildContext context) {
                        return e;
                      });
                    }).toList(),
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 1,
                      onPageChanged: (index, reason){
                        setState(() {_current = index;});
                      },
                    ),
                  ),
                ),
                SizedBox(height: mqHeight(context, 01),),
                HomeSliderIndicator(
                  height: 15,
                  count: _items.length,
                  current: _current,
                ),
                SizedBox(height: mqHeight(context, 01),),
                Container(
                  // height: sWidth(context, 90),
                  width: mqWidth(context, 90),
                  child: MainMenuOptionsGrid(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
