import 'package:flutter/material.dart';

class CheckBoxRememberMe extends StatefulWidget {
  const CheckBoxRememberMe({super.key, required this.onChanged});

  final Function(bool) onChanged;

  @override
  State<CheckBoxRememberMe> createState() => _CheckBoxRememberMeState();
}

class _CheckBoxRememberMeState extends State<CheckBoxRememberMe> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.orange,
          checkColor: Colors.white,
          value: value,
          onChanged: (value) {
            // todo here can make sharedprmance to make it login all time if he make it true
            setState(() {
              widget.onChanged(value!);
              this.value = value;
            });
          },
        ),

        Text('Remember Me', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}