import 'package:flutter/material.dart';

class OptionButtonCustomWidget extends StatefulWidget {
  const OptionButtonCustomWidget({
    super.key,
    required this.optionText,
    required this.onTap,
    required this.isSelected,
  });

  final String optionText;
  final Function(String) onTap;
  final bool isSelected;

  @override
  State<OptionButtonCustomWidget> createState() =>
      _OptionButtonCustomWidgetState();
}

class _OptionButtonCustomWidgetState extends State<OptionButtonCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blueAccent, width: 2),
        color: widget.isSelected ? Colors.blueAccent : Colors.transparent,
      ),
      child: ListTile(
        title: Text(
          widget.optionText,
          style: const TextStyle(fontSize: 18, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
        onTap: () {
          widget.onTap(widget.optionText);
        },
      ),
    );
  }
}