import 'package:flutter/material.dart';

class TypeWidget extends StatelessWidget {
  final IconData iconData;
  final String name;
  final bool isSelected;
  const TypeWidget(
      {super.key,
      required this.iconData,
      required this.name,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: isSelected ? Colors.black : Colors.grey.shade100),
          child: Icon(
            iconData,
            size: 40,
            color: isSelected ? Colors.white : Colors.grey.shade500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        )
      ],
    );
  }
}
