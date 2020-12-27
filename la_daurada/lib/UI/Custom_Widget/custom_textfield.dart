import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';

Widget CustomTextfield(String hinttext, keyboardtype,color) {
  return TextFormField(
    keyboardType: keyboardtype,
    decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: SizeConfig.safeBlockVertical * 2.1,
          color: color,
        ),
        filled: true,
        fillColor: Color(0xffEEF2FD),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.safeBlockHorizontal * 2.5)),
            borderSide: BorderSide.none)),
  );
}
