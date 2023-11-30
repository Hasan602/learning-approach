import 'package:flutter/material.dart';

class ExpantionTileCard extends StatelessWidget {
  const ExpantionTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'ExpantionTileCard',
      //theme: ,
      home: card_tile(),
    );
  }
}

class card_tile extends StatefulWidget {
  const card_tile({super.key});

  @override
  State<card_tile> createState() => _card_tileState();
}

class _card_tileState extends State<card_tile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(),
    );
  }
}