import 'package:flutter/material.dart';

class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({super.key});

  @override
  State<DropDownButtonExample> createState() => _DropDownButtonExampleState();
}

class _DropDownButtonExampleState extends State<DropDownButtonExample> {
  String dropdownvalue = 'Item 1';

  var items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    child: Text(items),
                    value: items,
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
