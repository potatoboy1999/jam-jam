import 'package:flutter/material.dart';
import 'package:jam_jam/util/styles.dart';

class HomeSliderIndicator extends StatefulWidget {
  final double height;
  final int current;
  final int count;
  HomeSliderIndicator({
    @required this.height,
    @required this.current,
    @required this.count,
  });

  @override
  _HomeSliderIndicatorState createState() => _HomeSliderIndicatorState();
}

class _HomeSliderIndicatorState extends State<HomeSliderIndicator> {
  List<Widget> _listIndicators = new List();

  setIndicators(){
    _listIndicators = [];
    for(int i = 0; i < widget.count; i++){
      _SlideIndicator indicator = new _SlideIndicator(
        position: i,
        current: widget.current,
      );
      _listIndicators.add(indicator);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setIndicators();
    return Container(
      height: widget.height,
      width: mqWidth(context, 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _listIndicators,
      ),
    );
  }
}

class _SlideIndicator extends StatelessWidget {
  final int position;
  final int current;
  _SlideIndicator({
    this.position,
    this.current,
  });

  bool isActive(){
    return position == current;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: isActive() ? kMainOrange : Colors.grey.withOpacity(0.7),
        shape: BoxShape.circle,
      ),
    );
  }
}
