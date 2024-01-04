import 'package:flutter/material.dart';

Widget myText(
    {int? maxline,
    required String text,
    TextAlign textAlignment = TextAlign.center,
    double size = 15,
    double? letterSpacing,
    String? fontFamily,
    FontWeight fontweight = FontWeight.w500,
    Color color = Colors.black,
    double? height}) {
  return Text(
    maxLines: maxline,
    text,
    style: TextStyle(
      decoration: TextDecoration.none,
      color: color,
      fontSize: size,
      height: height,
      letterSpacing: letterSpacing,
      overflow: TextOverflow.ellipsis,
      fontWeight: fontweight,
      fontFamily: fontFamily ?? 'Overpass',
    ),
    textAlign: textAlignment,
  );
}
