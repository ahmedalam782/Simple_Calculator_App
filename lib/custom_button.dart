import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String data;
  final String icon;
  final Function() onTap;
  const CustomButton({
    super.key,
    required this.data,
    required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(),
        ),
        child: Row(
          children: [
            Text(
              data,
              style: const TextStyle(
                color: Color(0xff63519E),
                fontSize: 20,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              icon,
              style: const TextStyle(
                color: Color(0xff63519E),
                fontSize: 15,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
