import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';

Widget CustomBigText(String text) {
  return new Text(
    text,
    style: TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: SizeConfig.safeBlockVertical * 3,
      color: Color(0xff000938),
    ),
  );
}