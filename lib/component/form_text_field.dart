import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  String? placeholder;
  Icon? prefixIcon;
  String validatorMessage;
  String? defaultValidatorMessage;
  bool obsecureText;
  TextInputType keyboardType;

  FormInput({this.placeholder, this.prefixIcon, this.validatorMessage = 'Field is required', this.obsecureText = false, this.keyboardType = TextInputType.text, this.defaultValidatorMessage = null, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: placeholder,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide: BorderSide(color: Colors.purple, width: 1.0),
        ),
        focusColor: Colors.purple,
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return validatorMessage;
        }
        return defaultValidatorMessage;
      },
    );
  }
}
