import 'package:flutter/material.dart';

class CustomInputNumber extends StatelessWidget {
  final String data;
  final Color textColor;
  final Function() onPressedAdd;
  final Function() onPressedRemove;

  const CustomInputNumber({
    super.key,
    required this.data,
    required this.textColor,
    required this.onPressedAdd,
    required this.onPressedRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          data,
          style: TextStyle(
            color: textColor,
            fontSize: 25,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: onPressedAdd,
          icon: const Icon(
            Icons.add,
          ),
        ),
        IconButton(
          onPressed: onPressedRemove,
          icon: const Icon(
            Icons.remove,
          ),
        )
      ],
    );
  }
}
