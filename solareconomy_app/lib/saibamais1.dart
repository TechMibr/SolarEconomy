import 'package:flutter/material.dart';

class Saibamais1 extends StatelessWidget {
  const Saibamais1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/casa1.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Text(
                      'COMO A ENERGIA RENOVÁVEL PODE TE AJUDAR?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFD9985F),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nisi velit, faucibus sed est at, ullamcorper congue enim. Vestibulum ornare dignissim augue eget aliquet. Suspendisse consequat orci mauris, vitae sollicitudin velit lacinia ut. Duis lacinia placerat fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0XFF012257),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      'Maecenas semper tempor tortor, non pellentesque augue elementum gravida. In tincidunt nisl dictum, pharetra purus a, pulvinar lacus. Integer ante nisi, luctus in ex sit amet, imperdiet vulputate felis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum id euismod urna.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0XFF012257),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'images/casa2.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      )
    );
  }
}
