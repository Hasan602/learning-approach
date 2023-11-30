import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  final GlobalKey<FormFieldState<String>> _passwordFieldExampleKey =
      GlobalKey<FormFieldState<String>>();

  String? _name;
  String? _phoneNumber;
  String? _email;
  String? _password;

  String? _validateName(String? value) {
    if (value?.isEmpty ?? false) {
      return 'Name is requied';
    }
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value!)) {
      return 'Please enter only alphabetical chatacters.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.phone),
              hintText: 'What do people call you?',
              labelText: 'Name *',
            ),
            onSaved: (String? value) {
              this._name = value;
              print('name = $_name');
            },
            validator: _validateName,
          ),
          SizedBox(
            height: 24.0,
          ),
          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.phone),
              hintText: 'Where can we reach you?',
              labelText: 'Phone Number *',
            ),
            onSaved: (String? value) {
              this._name = value;
              print('PhoneNumber = $_phoneNumber');
            },
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.phone),
              hintText: 'What do people call you?',
              labelText: 'Name *',
            ),
            onSaved: (String? value) {
              this._name = value;
              print('name = $_name');
            },
            validator: _validateName,
          ),
          SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.fieldkey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.onFieldSubmitted,
    this.validator,
  });

  final Key? fieldkey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldkey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
          border: UnderlineInputBorder(),
          filled: true,
          hintText: widget.hintText,
          helperText: widget.helperText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          )),
    );
  }
}
