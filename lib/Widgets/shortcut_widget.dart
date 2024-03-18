import 'package:flutter/material.dart';


class BuildShortcut extends StatelessWidget {

  final String? name;
  final IconData? leadingIcon;

  const BuildShortcut({
    required this.leadingIcon, this.name,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(246,249,254,255),
        border: Border.all(
          color: Colors.blue,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(leadingIcon),
          const SizedBox(width: 6),
          Text(
            '$name',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
