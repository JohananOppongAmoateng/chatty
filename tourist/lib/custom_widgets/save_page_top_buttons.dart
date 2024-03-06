import 'package:flutter/material.dart';

class SavedPageTopButton extends StatefulWidget {
  final String content;
  final bool isSelected;

  const SavedPageTopButton(
      {super.key, required this.content, this.isSelected = false});

  @override
  State<SavedPageTopButton> createState() => _SavedPageTopButtonState();
}

class _SavedPageTopButtonState extends State<SavedPageTopButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.isSelected
          ? Theme.of(context).primaryColor
          : const Color.fromRGBO(173, 254, 177, 1),
      child: Text(
        widget.content,
          style:  TextStyle(color: widget.isSelected
              ? Colors.white
              : Colors.black,
        ),
      )
    );
  }
}
