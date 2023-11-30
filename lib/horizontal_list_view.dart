import 'package:flutter/material.dart';

class horizontal_list_view extends StatelessWidget {
  const horizontal_list_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 550.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              height: 480.0,
              width: 240.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/aquaman.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle),
            ),
            Container(
              height: 480.0,
              width: 240.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/batman.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle),
            ),
            Container(
              height: 480.0,
              width: 240.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/images.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle),
            ),
            Container(
              height: 480.0,
              width: 240.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/superman.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle),
            ),
            Container(
              height: 480.0,
              width: 240.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/wonderwomen.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle),
            ),
            Container(
              height: 480.0,
              width: 240.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/aquaman.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle),
            )
          ],
        ),
      ),
    );
  }
}
