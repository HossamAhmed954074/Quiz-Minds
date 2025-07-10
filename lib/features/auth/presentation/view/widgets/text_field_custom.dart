import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatefulWidget {
  const TextFieldCustomWidget({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;

  final TextEditingController controller;

  @override
  State<TextFieldCustomWidget> createState() => _TextFieldCustomWidgetState();
}

class _TextFieldCustomWidgetState extends State<TextFieldCustomWidget> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
       
      },
      controller: widget.controller,
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        suffixIcon: widget.hintText == 'Password' ||
                widget.hintText == 'Confirm Password' ||
                widget.hintText == 'Old Password' ||
                widget.hintText == 'New Password'
            ? obscureText == false
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = true;
                        });
                      },
                      icon: Icon(Icons.visibility, color: Colors.white),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = false;
                        });
                      },
                      icon: Icon(Icons.visibility_off, color: Colors.white),
                    )
            : SizedBox.shrink(),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}