import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solareconomy_app/slide.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class apresentacao extends StatelessWidget {
  var _listSlide = [
    {'id': 0, 'slide': Slide1()},
    {'id': 0, 'slide': Slide2()},
    {'id': 0, 'slide': Slide3()},
    {'id': 0, 'slide': Slide4()},
  ];

  final _pageNotifier = ValueNotifier<int>(0);

  apresentacao({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: _listSlide.length,
                itemBuilder: (_, currentIndex) {
                  return Slide(
                    slideopcao: _listSlide[currentIndex]['slide'],
                  );
                },
                onPageChanged: (page) {
                  _pageNotifier.value = page;
                },
              ),
            ),
            CirclePageIndicator(
              itemCount: _listSlide.length,
              currentPageNotifier: _pageNotifier,
            ),
          ],
        ),
      ),
    );
  }
}
