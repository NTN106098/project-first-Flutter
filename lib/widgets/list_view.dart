import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/app_text.dart';

class ContainerContentViews extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final double sizeIcon;
  final double sizeIcon2;

  final double sizeText;

  final IconData icon2;

  const ContainerContentViews(
      {Key? key,
      required this.icon,
      required this.text,
      required this.sizeIcon,
      required this.sizeIcon2,
      required this.iconColor,
      required this.sizeText,
      required this.icon2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(137, 112, 110, 110)))),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(icon),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: sizeText,
                        color: Color.fromARGB(95, 31, 29, 29)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                icon2,
                size: sizeIcon2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
