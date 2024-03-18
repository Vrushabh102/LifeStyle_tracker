import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.titleText,
      required this.description,
      required this.information,
      required this.imagePath,
      required this.backgroundColorHex});

  final String titleText;
  final String description;
  final String information;
  final String imagePath;
  final int backgroundColorHex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      height: 282,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.1,
              blurRadius: 0.1,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            width:  242,
            decoration: BoxDecoration(
              color: Color(backgroundColorHex),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
            ),
            child: Image.asset(imagePath),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
            ),
            padding: const EdgeInsets.only(left: 12,right: 12),
            height: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  titleText,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF598BED),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15,),
                Text(
                  information,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
