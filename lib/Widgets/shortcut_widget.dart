import 'package:flutter/material.dart';


class BuildShortcut extends StatelessWidget {

  final String? name;
  final String? leading;

  BuildShortcut({
    required this.leading, this.name,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(246,249,254,255),
        border: Border.all(
          color: const Color(0xFF598BED),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('$leading'),
            const SizedBox(width: 12),
            Text(
              '$name',
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF598BED),
              ),
            )
          ],
        ),
      ),
    );
  }
}
