import 'package:flutter/material.dart';
class RegisterWidget extends StatelessWidget {
  final TextEditingController controller;
  final String lableText;
  final IconData icon;


  const RegisterWidget({super.key ,
  required this.controller,
    required this.lableText,
    required this.icon
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(

        )
      ],
    );
  }
}
