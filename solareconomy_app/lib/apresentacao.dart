import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solareconomy_app/slide.dart';

class apresentacao extends StatelessWidget {

  var _listSlide = [
    { 'id': 0, 'slide' : Slide1() },
    { 'id': 0, 'slide' : Slide2() },
    { 'id': 0, 'slide' : Slide3() },
    { 'id': 0, 'slide' : Slide4() },
  ];


  apresentacao({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: _listSlide.length,
                itemBuilder: (_, currentIndex) {
                  return Slide(slideopcao: _listSlide[currentIndex]['slide'],);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
