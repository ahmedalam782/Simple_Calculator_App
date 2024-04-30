import 'package:flutter/material.dart';

class CustomContainerResult extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String data;

  const CustomContainerResult({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      color: color,
      child: Text(
        data,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontFamily: 'Timmana',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
