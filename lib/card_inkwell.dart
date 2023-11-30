import 'package:flutter/material.dart';

class Card_and_inkWell extends StatelessWidget {
  const Card_and_inkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          Card(
            color: Colors.red,
            elevation: 10.0,
            child: SizedBox(
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Expanded(child: Text("Card 1")),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green,
            margin: EdgeInsets.all(20.0),
            child: SizedBox(
              height: 100,
              child: InkWell(
                splashColor: Colors.deepOrange,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('Card 2 ( with inkwell offect on tap)'),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.elliptical(40, 80),
            )),
            child: SizedBox(
              height: 180,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Card 3 with custom border radius"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
