import 'package:flutter/material.dart';
import 'package:walpaper/horizontal_list_view.dart';

class My_App extends StatelessWidget {
  final title = 'Horizontal List view';
  const My_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green,
        ),
        body: horizontal_list_view(),
      ),
    );
  }
}
