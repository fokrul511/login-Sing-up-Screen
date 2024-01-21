import 'package:flutter/material.dart';

textFormField(
  String hint,
  TextEditingController controller,
  IconData icons,
    Function vilidate
) {
  return TextFormField(
    validator: vilidate(),
    controller: controller,
    autofocus: false,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade300,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      hintText: hint,
      prefixIcon: Icon(
        icons,
        color: Colors.grey,
      ),
    ),
  );
}
