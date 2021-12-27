import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconWidget({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Icon(
            iconData,
            size: 16,
            color: Colors.grey[400],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey[400]),
          )
        ],
      ),
    );
  }
}
