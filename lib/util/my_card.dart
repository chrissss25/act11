import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String iconImagePath;
  final int index;

  const MyCard({
    Key? key,
    required this.iconImagePath,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = index == 1 ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(26),
        ),
        child: SingleChildScrollView(
          // Agregado SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Aquí puedes insertar tu imagen
              Image.asset(
                iconImagePath,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
