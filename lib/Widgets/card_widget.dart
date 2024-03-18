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
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.1,
              blurRadius: 0.1,
              offset: const Offset(0,-1),
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
            height: 140,
            width:  242,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
            ),
            padding: const EdgeInsets.only(left: 12,right: 12),
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
                    fontFamily: 'Lora'
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






class CardWidgetTwo extends StatelessWidget {
  const CardWidgetTwo(
      {super.key,
        required this.titleText,
        required this.description,
        required this.information,
        required this.imagePath,
        required this.backgroundColorHex,
        required this.buttonText});

  final String titleText;
  final String description;
  final String information;
  final String buttonText;
  final String imagePath;
  final int backgroundColorHex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      height: 282,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.1,
              blurRadius: 0.1,
              offset: const Offset(0,-1),
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
            height: 140,
            width:  242,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
            ),
            padding: const EdgeInsets.only(left: 12,right: 12),
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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      information,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                      ),
                    ),

                    Container(
                      width: 78,
                      height: 26,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF598BED), // You can set the color of the border here
                          width: 1, // You can set the width of the border here
                        ),
                        borderRadius: BorderRadius.circular(12.0), // You can adjust the border radius here
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF598BED)
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class CardWidgetThree extends StatelessWidget {
  const CardWidgetThree(
      {super.key,
        required this.titleText,
        required this.description,
        required this.information,
        required this.imagePath,
        required this.backgroundColorHex,
        required this.iconPath});

  final String titleText;
  final String description;
  final String information;
  final String iconPath;
  final String imagePath;
  final int backgroundColorHex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      height: 282,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.1,
              blurRadius: 0.1,
              offset: const Offset(0,-1),
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
            height: 140,
            width:  242,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
            ),
            padding: const EdgeInsets.only(left: 12,right: 12),
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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      information,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                      ),
                    ),

                    Image.asset(iconPath),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}