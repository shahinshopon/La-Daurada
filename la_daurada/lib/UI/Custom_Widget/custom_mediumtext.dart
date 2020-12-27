import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';

 Widget CustomMediumText(String button_text) {
    return Center(
      child: new Text(
        button_text,
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
          fontSize:
              SizeConfig.safeBlockVertical * 2.5,
          color: Color(0xffffffff),
        ),
      ),
    );
  }