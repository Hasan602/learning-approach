import 'package:flutter/material.dart';

class TypographyExample extends StatelessWidget {
  const TypographyExample({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final _style = <String, TextStyle>{
      'headline1': textTheme.displayLarge!,
      'headline2': textTheme.displayMedium!,
      'headline3': textTheme.displaySmall!,
      'headline4': textTheme.headlineMedium!,
      'headline5': textTheme.headlineLarge!,
      'headline6': textTheme.headlineSmall!,
      'subtitle1': textTheme.titleMedium!,
      
    };

    return Scaffold(
      body: ListView(
        children: [
          for (final e in _style.entries)
            ListTile(
              title: Text(
                e.key,
                style: e.value,
              ),
            )
        ],
      ),
    );
  }
}
