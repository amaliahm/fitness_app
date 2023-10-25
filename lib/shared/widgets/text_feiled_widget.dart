import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label, hint;
  final bool obsecure;
  const TextFieldWidget({
    this.obsecure = false,
    required this.label,
    required this.hint,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Color(0xFF707070), fontSize: 18),
        ),
        TextField(
          obscureText: obsecure,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
