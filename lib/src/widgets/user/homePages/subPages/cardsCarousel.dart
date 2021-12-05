import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/dashBoardCards1.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/dashBoardCards2.dart';

final List<Widget> cardCarouselList = [
  DashBoardCards1(),
  DashBoardCards2(),
];

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  _CarouselWithIndicatorDemoState createState() =>
      _CarouselWithIndicatorDemoState();
}

class _CarouselWithIndicatorDemoState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: cardCarouselList,
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              aspectRatio: 0.90,
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
              //enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cardCarouselList.map((url) {
            int index = cardCarouselList.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
