import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';

Widget CustomSmallText(String text, color) {
  return new Text(
    text,
    style: TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
      fontSize: SizeConfig.safeBlockVertical * 2.2,
      color: color,
    ),
  );
}